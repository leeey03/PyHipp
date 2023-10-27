#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "#==========================================================="
echo "Start Times"
head -n 1 rplpl-slurm.queue1-dy-r5ad-2xlarge-1.1.out
head -n 1 rplspl-slurm.queue1-dy-r5ad-2xlarge-1.2.out

echo "End Times"
tail -n 5 rplpl-slurm.queue1-dy-r5ad-2xlarge-1.1.out
tail -n 5 rplspl-slurm.queue1-dy-r5ad-2xlarge-1.2.out
echo "#==========================================================="
