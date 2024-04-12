#!/usr/bin/env bash
# Helpful functions.  Source in your code as follows: 
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/functions.sh)

hello_world() {
  echo "Hello world!"
  YYY="yyy"
  export YYY
}