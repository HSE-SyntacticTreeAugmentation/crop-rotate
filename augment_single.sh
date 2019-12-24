#!/bin/sh
export PYTHONIOENCODING=utf-8

echo "Testing rotation"
python augment.py \
   -infile "./data/ud-treebanks-v2.4/UD_Russian-Taiga/ru_taiga-ud-train.conllu" \
   -outfile "./data/ud-treebanks-v2.4/UD_Russian-Taiga/rotated-ru_taiga-train.conllu" \
   -maxrot 2 \
   -prob 0.3 \
   -operation "rotate"

echo "Testing cropping"
python augment.py \
   -infile "./data/ud-treebanks-v2.4/UD_Russian-Taiga/ru_taiga-ud-train.conllu" \
   -outfile "./data/ud-treebanks-v2.4/UD_Russian-Taiga/cropped-ru_taiga-train.conllu" \
   -prob 0.3 \
   -operation "crop"

echo "Done, check your output files"
