#!/bin/bash

cd /home/vagrant/openedx
# clone local fork of edx-platform
git clone https://github.com/allania7med11/edx-platform.git
# tell Tutor to use a local fork of edx-platform
tutor mounts add ./edx-platform
# launch the developer platform setup process
tutor images build openedx-dev
tutor dev launch
