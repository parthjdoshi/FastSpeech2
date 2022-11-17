#!/bin/bash
input="all_sents.txt"
while IFS= read -r line
do
  echo "$line"
  python synthesize.py --speaker_id 2 --text "$line" --restore_step 150000 --mode single -p config/ESD/preprocess.yaml -m config/ESD/model.yaml -t config/ESD/train.yaml
done < "$input"

