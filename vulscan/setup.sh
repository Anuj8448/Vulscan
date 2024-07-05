#!/bin/bash

# Install dependencies from requirements.txt
pip install -r requirements.txt

# Install golismero from the external source
echo "Installing golismero..."
apt-get install python2.7 python2.7-dev python-pip python-docutils git perl nmap sslscan
cd /opt
git clone https://github.com/golismero/golismero.git
cd golismero
pip install -r requirements.txt
pip install -r requirements_unix.txt
ln -s ${PWD}/golismero.py /usr/bin/golismero
pip install -r requirements.txt
python setup.py install
cd ..

# Install other tools that are not available via pip
# For example, installing nmap, dnsrecon, etc., if not already available
apt-get install -y nmap dnsrecon wafw00f uniscan sslyze fierce lbd theharvester amass nikto

echo "All tools installed successfully."
