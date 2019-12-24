mkdir ./data
cd data

# Download UD-treebank v2.4
curl --remote-name-all https://lindat.mff.cuni.cz/repository/xmlui/bitstream/handle/11234/1-2988/{ud-treebanks-v2.4.tgz}

# extract the treebank
tar -xvzf ud-treebanks-v2.4.tgz

# delete all unnecessary stuff
find . -type f -name  '*.txt' -delete

echo "Ready to go"

