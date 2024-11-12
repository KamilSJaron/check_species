#! /usr/bin/env bash

set -e
set -o pipefail
set -u

(
	cd seqs_10k
	xzcat -v ../ibol.fa.xz \
		| head -n 20000 \
		| ../split_ibolt.awk
)
