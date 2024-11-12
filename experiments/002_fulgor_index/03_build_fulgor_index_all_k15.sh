#! /usr/bin/env bash

set -e
set -o pipefail
set -u
#set -f
#PS4='\[\e[32m\][$(date "+%Y-%m-%d %H:%M:%S") L${LINENO}]\[\e[0m\] '; set -x

k=15
m=10
./fulgor build -t 8 -k $k -m $m -l <(xzcat seqs_all/fof.txt.xz | sed 's/^/seqs_all\//') -o "index_all.k$k"

