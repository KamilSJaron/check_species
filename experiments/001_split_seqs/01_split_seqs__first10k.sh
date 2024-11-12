#! /usr/bin/env bash

set -e
set -o pipefail
set -u

xzcat -v ibol.fa.xz \
	| head -n 20000 \
	| awk '/^>BOLD:/ {
		split(substr($0, 2), a, "_")
		sub(/^BOLD:/, "", a[1])
		OUT = "seqs_10k/" a[1] ".fa"
	}
	{
		print >> OUT
		close(OUT)
	}'

