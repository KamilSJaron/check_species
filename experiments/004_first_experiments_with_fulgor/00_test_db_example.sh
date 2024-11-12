#! /usr/bin/env bash

set -e
set -o pipefail
set -u

./fulgor pseudoalign -i index_all.k15.fur -q first_db_allele.fa -o output_db_allele.txt --tsv
