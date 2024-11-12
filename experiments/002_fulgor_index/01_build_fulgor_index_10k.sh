#! /usr/bin/env bash

set -e
set -o pipefail
set -u
#set -f
#PS4='\[\e[32m\][$(date "+%Y-%m-%d %H:%M:%S") L${LINENO}]\[\e[0m\] '; set -x

readonly PROGNAME=$(basename $0)
readonly PROGDIR=$(dirname $0)
readonly -a ARGS=("$@")
readonly NARGS="$#"

#if [[ $NARGS -ne 1 ]]; then
#	>&2 echo "usage: $PROGNAME options"
#	exit 1
#fi

