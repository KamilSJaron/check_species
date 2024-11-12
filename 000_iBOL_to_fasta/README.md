The iBOL database was downloaded from here: https://v3.boldsystems.org/index.php/datarelease

The table was converted to a fasta as follows:

```
tail -n+2 iBOL_phase_6.50_COI.tsv | awk 'BEGIN{FS="\t"}{print ">" $5 "_" $9 "_" $11 "_" $15 "_" $2 "\n" $31}' > iBOL_phase6.50_COI.fasta
```


