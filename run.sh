#!/usr/bin/env bash

MAIN_NAME="${1}"
TMPDIR=$(mktemp -d -t hvm-preprocessXXXXX)
cp -r ./* "${TMPDIR}/"
cd "${TMPDIR}"
for file in $(find . -name "*.bend" | sed 's/^[.][/]//'); do
  echo -e "#ifndef ${file^^}\n#define ${file^^}\n" \
    | tr '.' '_' \
    | cat - "${file}" >"${file}.tmp"
  echo -e "\n#endif" >>"${file}.tmp"
  mv "${file}.tmp" "${file}"
done
cd ..
cpp -P -E "${TMPDIR}/${MAIN_NAME}" >"${TMPDIR}/_main.bend"
#clear && tput reset && echo -en "\033c\033[3J"
#cat "${TMPDIR}/_main.bend"
bend run-c -s "${TMPDIR}/_main.bend"
