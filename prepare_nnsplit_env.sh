#!/bin/bash

echo "Executing 'sh' command via "$(ls -l `which sh`)""
venv_name="nnsplit_train_env"
venv_folder_path="../$venv_name"

echo "Setting up NNSplit train environment name as "$venv_name""
echo "NNSplit train environment is located on "$venv_folder_path""

mkdir $venv_folder_path
python -m venv $venv_folder_path

source $venv_folder_path/bin/activate

#Uninstall existing pkgs (if any)
# pip uninstall -y fastai
# pip uninstall -y tensorflow
# pip uninstall -y torchdata
# pip uninstall -y torchvision
# pip uninstall -y torchtext
# pip uninstall -y torchaudio
# pip uninstall -y nnsplit


pip install -r requirements.txt

python -m spacy download en_core_web_sm
# sudo apt-get build-dep python3-lxml
