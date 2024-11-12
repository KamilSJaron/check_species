#! /usr/bin/env bash

set -e
set -o pipefail
set -u

xzcat -v ibol.fa.xz \
	| head -n 20000 \
	| awk '/^>BOLD:/ {OUT="seqs/" substr($0,2) ".fa"}; {print >> OUT; close(OUT)}'

