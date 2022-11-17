#!/bin/bash
input="all_sents.txt"
while IFS= read -r line
do
  echo "$line"
  python synthesize.py  --text "$line" --restore_step 900000 --mode single -p config/LJSpeech/preprocess.yaml -m config/LJSpeech/model.yaml -t config/LJSpeech/train.yaml
done < "$input"

