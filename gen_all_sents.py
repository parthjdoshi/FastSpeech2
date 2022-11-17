with open('../neutral_gt.csv', "r") as f:
    all_sents = f.readlines()[1:]
    all_sents = [x.split('"')[-2].strip() for x in all_sents]
    print(all_sents)
    print(len(all_sents))

with open('all_sents.txt', "w") as f:
    for sent in all_sents:
        f.write(sent + "\n")
