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
apt-get install -y nmap dnsrecon wafw00f git python3-pip
snap install amass
pip install sslyze

# Install Uniscan
echo "Installing uniscan..."
git clone https://github.com/poerschke/Uniscan.git
cd Uniscan
chmod +x uniscan.pl
cp uniscan.pl /usr/local/bin/uniscan
cd ..

# Install lbd (Load Balancing Detector)
echo "Installing lbd..."
git clone https://github.com/opsxcq/lbd.git
cd lbd
chmod +x lbd.py
cp lbd.py /usr/local/bin/lbd
cd ..

# Install theHarvester
echo "Installing theHarvester..."
git clone https://github.com/laramies/theHarvester.git
cd theHarvester
pip install -r requirements.txt
python setup.py install
cd ..

echo "All tools installed successfully."
