#!/bin/bash

# Install Python and pip
sudo apt install python3-pip -y

# Install Tutor
git clone --branch=nightly https://github.com/overhangio/tutor.git
pip install -e "./tutor[full]"
