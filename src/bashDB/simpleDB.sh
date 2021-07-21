#!/bin/bash

db_set() {
  echo "$1,$2" >> simpleDatabase.txt
}

db_get(){
  grep "^$1," simpleDatabase.txt | sed -e "s/^$1,//" | tail -n 1
}

"$@"
