#!/bin/bash

# Install golismero from the external source
echo "Installing golismero..."
apt-get install python2.7 python2.7-dev python-pip python-docutils git perl nmap sslscan
cd /opt
git clone https://github.com/golismero/golismero.git
cd golismero
pip install -r requirements.txt
pip install -r requirements_unix.txt
ln -s ${PWD}/golismero.py /usr/bin/golismero
cd ..

# Install other tools that are not available via pip
# For example, installing nmap, dnsrecon, etc., if not already available
apt install nmap dnsrecon wafw00f uniscan lbd theharvester amass -y
pip install sslyze

echo "All tools installed successfully."
