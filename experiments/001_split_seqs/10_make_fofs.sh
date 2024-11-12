#! /usr/bin/env bash

set -e
set -o pipefail
set -u

find seqs_10k/ -name '*.fa' \
	| xz -9 -T1 \
	> seqs_10k.txt.xz

find seqs_all/ -name '*.fa' \
	| xz -9 -T1 \
	> seqs_all.txt.xz
