#!/bin/bash
mkdir -p ~/openedx
cd ~/openedx
sudo apt install python3.8-venv
python3.8 -m venv tutor-venv
. tutor-venv/bin/activate
git clone --branch=nightly https://github.com/overhangio/tutor.git
pip install -e "./tutor[full]"
tutor dev launch