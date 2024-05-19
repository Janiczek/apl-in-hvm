#!/usr/bin/env bash

COLOR_OFF="\e[0m";
DIM="\e[2m";

FILE=$1

function run {
  clear;
  tput reset;
  echo -en "\033c\033[3J";

  echo -en "${DIM}";
  date -R;
  echo -en "${COLOR_OFF}";

  ./run.sh "$FILE"
}

run

chokidar *.bend | while read WHATEVER; do
  run;
done;
