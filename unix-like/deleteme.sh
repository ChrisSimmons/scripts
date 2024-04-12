#!/usr/bin/env bash
# TODO - DELETE THIS BEFORE RELEASE

# Must use this syntax for Mac OS because of the version of bash used
# https://superuser.com/a/255278
source /dev/stdin <<< "$(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/generalize/unix-like/functions.sh?xxxx=$(date +%s))"

establish_os_ver

echo "OS: $OS"
echo "VER: $VER"
echo "VALUES_FOUND_IN: $VALUES_FOUND_IN"
echo "Epoch (Unix time): $(unix_time)"
echo "OS_FIRST: $OS_FIRST"


case $OS_FIRST in

  DEBIAN)
    echo "This is Debian"
    ;;

  UBUNTU)
    echo "This is Ubuntu"
    ;;

  DARWIN)
    echo "This is Mac OS"
    ;;

  *)
    echo "This is something else"
    ;;
esac
