#!/bin/bash
cd "${0%/*}"

echo "Setup bash config files..."
cp bash_logout ~/.bash_logout
cp bash_profile ~/.bash_profile
cp bashrc ~/.bashrc
source ~/.bash_profile