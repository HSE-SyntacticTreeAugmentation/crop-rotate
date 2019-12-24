# Crop and rotate data augmentation for Universal Dependencies syntactic trees

#### Create and activate a virtual environment for python 3
```bash
python3 -m venv venv
. venv/bin/activate
```

#### Install requirements in your virtual environment
```bash
pip install -r requirements.txt
```

#### Download UD treebanks v2.4
```bash
sh preprocess.sh
```

#### Augment syntactic trees
```bash
sh ./augment_single.sh
```
`augment_single.sh` can be edited to change selected paths and parameters

#### Install syntactic parser requirements
```bash
python -m deeppavlov install syntax_ru_syntagrus_bert.json
```
To run it on a CUDA-compatible GPU one can install `tensorflow-gpu`:
```bash
pip install tensorflow-gpu==1.14.0
```

#### Launch syntactic parser training and evaluation
```bash
python -m deeppavlov train -d syntax_ru_taiga_bert.json
```