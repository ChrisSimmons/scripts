#!/usr/bin/env bash
# Helpful functions.  Source in your code as follows: 
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/functions.sh)

# Echoes a string indicating the Unix epoch time
unix_time() {
  echo $(date +%s)
}

# https://unix.stackexchange.com/a/201744
first_word() {
  echo ${1%% *}
}

# https://unix.stackexchange.com/a/6348
# Provides:
# - OS - Operating system name
# - VER - Operating system version
# - OS_FIRST - Upper-case first word of OS, usually the name of the distro (e.g. "DEBIAN", "UBUNTU")
establish_os_ver() {
  if [ -f /etc/os-release ]; then
      # freedesktop.org and systemd
      . /etc/os-release
      OS=$NAME
      VER=$VERSION_ID
      VALUES_FOUND_IN="/etc/os-release"
  elif type lsb_release >/dev/null 2>&1; then
      # linuxbase.org
      OS=$(lsb_release -si)
      VER=$(lsb_release -sr)
      VALUES_FOUND_IN="lsb_release"
  elif [ -f /etc/lsb-release ]; then
      # For some versions of Debian/Ubuntu without lsb_release command
      . /etc/lsb-release
      OS=$DISTRIB_ID
      VER=$DISTRIB_RELEASE
      VALUES_FOUND_IN="/etc/lsb-release"
  elif [ -f /etc/debian_version ]; then
      # Older Debian/Ubuntu/etc.
      OS=Debian
      VER=$(cat /etc/debian_version)
      VALUES_FOUND_IN="/etc/debian_version"
  else
      # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
      OS=$(uname -s)
      VER=$(uname -r)
      VALUES_FOUND_IN="uname"
  fi

  OS_FIRST=$(first_word $OS | tr '[:lower:]' '[:upper:]')
}
