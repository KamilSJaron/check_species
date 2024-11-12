#! /usr/bin/env bash

set -e
set -o pipefail
set -u

xzcat -v ibol.fa.xz \
	| awk '/^>BOLD:/ {
		split(substr($0, 2), a, "_")
		sub(/^BOLD:/, "", a[1])
		OUT = "seqs_all/" a[1] ".fa"
	}
	{
		print >> OUT
		close(OUT)
	}'

