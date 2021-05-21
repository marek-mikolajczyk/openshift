#!/bin/bash

sudo apt update
sudo apt-get install python3-pip


curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
python3 -m pip install --user ansible

ansible-galaxy collection install ovirt.ovirt
