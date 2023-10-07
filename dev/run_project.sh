#!/bin/bash
echo "****Clone local fork of edx-platform****"
cd ~/openedx
git clone https://github.com/allania7med11/edx-platform.git
echo "****Tell Tutor to use a local fork of edx-platform****"
. tutor-venv/bin/activate
tutor mounts add ./edx-platform
echo "****Launch the developer platform setup process****"
tutor images build openedx-dev
echo "****Run Tutor in dev mode using you local fork of edx-platform*****"
tutor dev launch
