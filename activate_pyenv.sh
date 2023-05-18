#!/bin/bash

echo "Executing 'sh' command via "$(ls -l `which sh`)""

venv_name="nnsplit_train_env"
venv_folder_path="../$venv_name"
echo "Adding virtual env "$venv_name" to ipykernel"

source $venv_name/bin/activate
# how to add pyenv to jupyter kernel:
# https://queirozf.com/entries/jupyter-kernels-how-to-add-change-remove
# pip install jupyter
ipython kernel install --name $venv_name --user