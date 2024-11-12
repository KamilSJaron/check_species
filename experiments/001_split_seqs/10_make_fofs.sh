#! /usr/bin/env bash

set -e
set -o pipefail
set -u

(
	cd seqs_10k
	find . -name '*.fa' \
		| sort \
		| xz -9 -T1 \
		> fof.txt.xz
)

(
	cd seqs_all
	find . -name '*.fa' \
		| sort \
		| xz -9 -T1 \
		> fof.txt.xz
)

