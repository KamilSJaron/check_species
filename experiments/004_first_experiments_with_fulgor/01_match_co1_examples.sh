#! /usr/bin/env bash

set -e
set -o pipefail
set -u

./fulgor pseudoalign -i index_all.k31.fur -q ./dummy_fly_fasta_test.fa -o output.txt --tsv
