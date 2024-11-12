#! /usr/bin/env bash

set -e
set -o pipefail
set -u

(
	cd seqs_all
	xzcat -v ../ibol.fa.xz \
		| ../split_ibolt.awk
)

