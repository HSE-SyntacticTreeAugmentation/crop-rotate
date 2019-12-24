#!/bin/sh
export PYTHONIOENCODING=utf-8

python augment_benchmark.py \
   -input "./data/ud-treebanks-v2.4" \
   -maxrot 2 \
   -prob 0.3
