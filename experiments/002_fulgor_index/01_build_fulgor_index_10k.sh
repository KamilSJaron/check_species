#! /usr/bin/env bash

set -e
set -o pipefail
set -u
#set -f
#PS4='\[\e[32m\][$(date "+%Y-%m-%d %H:%M:%S") L${LINENO}]\[\e[0m\] '; set -x

./fulgor build -t 8 -k 31 -m 20 -l <(xzcat seqs_10k/fof.txt.xz | sed 's/^/seqs_10k\//') -o index_10k

