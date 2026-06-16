#!/bin/bash
python3 -m venv ma26
source ./ma26/bin/activate
python -m pip install qepy f90wrap==0.2.16 dftpy matplotlib plotly jupyter
git clone git@github.com:asesma-org/miniASESMA2026.git 

