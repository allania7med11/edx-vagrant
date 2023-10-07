#!/bin/bash
echo "****Install Tutor****"
mkdir -p ~/openedx
cd ~/openedx
sudo apt update
sudo apt install build-essential python3.8-dev -y
sudo apt install python3.8-venv -y
python3.8 -m venv tutor-venv 
. tutor-venv/bin/activate
git clone --branch=nightly https://github.com/overhangio/tutor.git
pip install -e "./tutor[full]"
pip install -r tutor/requirements/dev.txt
echo "****Run Tutor in dev mode****"
tutor dev launch