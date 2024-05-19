#!/usr/bin/env bash

TMPDIR=$(mktemp -d -t hvm-preprocessXXXXX)
cp -r ./* "${TMPDIR}/"

## All .bend files receive an #ifndef #define #endif guard to prevent multiple inclusion

pushd "${TMPDIR}" >/dev/null
for file in $(find . -name "*.bend" | sed 's/^[.][/]//'); do
  echo -e "#ifndef ${file^^}\n#define ${file^^}\n" \
    | tr '.' '_' \
    | cat - "${file}" >"${file}.tmp"
  echo -e "\n#endif" >>"${file}.tmp"
  mv "${file}.tmp" "${file}"
done
popd >/dev/null


## skip tests if TESTS=0
if [ -z "${TESTS}" ]; then TESTS=1; fi
if [ "${TESTS}" -ne 0 ]; then

  ## Test runner
  ## For all Test.*.bend files in the current directory, make a Bend program that threads them together and run it
  ## TODO make it parallel

  TEST_TMP_NAME="_test.bend"
  TEST_FILES=$(grep -l "^def test" *.bend)

  echo "Result/bind (Result/Ok val) fn = (fn val) " >>"${TMPDIR}/${TEST_TMP_NAME}"
  echo "Result/bind r               *  = r        " >>"${TMPDIR}/${TEST_TMP_NAME}"
  echo "_expect testName 0 = (Result/Err testName)" >>"${TMPDIR}/${TEST_TMP_NAME}"
  echo "_expect *        * = (Result/Ok 1)        " >>"${TMPDIR}/${TEST_TMP_NAME}"

  for SINGLE_TEST_FILE in ${TEST_FILES[@]}; do
    echo "#include \"${SINGLE_TEST_FILE}\"" >>"${TMPDIR}/${TEST_TMP_NAME}"
  done

  for SINGLE_TEST_FILE in ${TEST_FILES[@]}; do
    for TESTNAME in $(grep -o "^def test\([a-zA-Z0-9_./]\+\)" "${SINGLE_TEST_FILE}" | sed 's/^def //'); do
      echo "def _${TESTNAME}(_):" >>"${TMPDIR}/${TEST_TMP_NAME}"
      echo "  return _expect(\"${SINGLE_TEST_FILE}: ${TESTNAME}\",${TESTNAME}(*))" >>"${TMPDIR}/${TEST_TMP_NAME}"
    done
  done

  echo "def main():"                  >>"${TMPDIR}/${TEST_TMP_NAME}"
  echo "  do Result:"                 >>"${TMPDIR}/${TEST_TMP_NAME}"
  for SINGLE_TEST_FILE in ${TEST_FILES[@]}; do
    for TESTNAME in $(grep -o "^def test\([a-zA-Z0-9_./]\+\)" "${SINGLE_TEST_FILE}" | sed 's/^def //'); do
      echo "    _ <- _$TESTNAME(*)" >>"${TMPDIR}/${TEST_TMP_NAME}"
    done
  done
  echo "    return \"All tests passed\"" >>"${TMPDIR}/${TEST_TMP_NAME}"

  ## Run the test program

  cpp -P -E "${TMPDIR}/${TEST_TMP_NAME}" >"${TMPDIR}/pp.${TEST_TMP_NAME}"
  echo "${TMPDIR}/pp.${TEST_TMP_NAME}"
  bend run-c -s "${TMPDIR}/pp.${TEST_TMP_NAME}" >"${TMPDIR}/_test_out.txt"

  ## If the test out file contains "All tests passed", continue the script, otherwise exit

  if ! grep -q "All tests passed" "${TMPDIR}/_test_out.txt"; then
    echo "Test failed!"
    cat "${TMPDIR}/_test_out.txt" | head -n1 | sed 's/.*"\(.*\)".*/\1/'
    echo
    exit 1
  fi

  echo -e "Tests passed!\n"

fi

## Run the main program

MAIN_NAME="${1}"
MAIN_TMP_NAME="_main.bend"
cpp -P -E "${TMPDIR}/${MAIN_NAME}" >"${TMPDIR}/${MAIN_TMP_NAME}"
#clear && tput reset && echo -en "\033c\033[3J"
#cat "${TMPDIR}/_main.bend"
#echo $TMPDIR
bend run-c -s "${TMPDIR}/${MAIN_TMP_NAME}"
