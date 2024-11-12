

here is a bio scan formated file (it was local bioscan run in our lab), which again reformatted as fasta

```
cat ~/Downloads/JARO_001.csv | awk 'BEGIN{FS=","}{ print ">" $1 "_" $4 "_" $11 "\n" $19 }' > experiments/002_testing_sequences/dummy_fly_fasta_test.fa
```

The headers are

```
JARO_001_<position in a plate>_<identity>_<best_BOLD_hit_if_possible>
```
