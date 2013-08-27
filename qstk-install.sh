#!/usr/bin/env sh

# Change this if you don't use vim
EDITOR=vim

echo "[QSTK] Installing QSTK and all dependencies..."
sudo apt-get update

# Python 2.7.3 is already installed by default on Ubuntu Precise
echo "[QSTK] pip"
sudo apt-get install -y python-pip

echo "[QSTK] virtualenv, nose"
sudo pip install virtualenv
sudo pip install nose

for package in gfortran python-numpy python-scipy python-matplotlib $EDITOR; do
	echo "[QSTK] $package"
	sudo apt-get install -y $package
done

echo "[QSTK] pandas, scikits.statsmodels, scikit-learn, and finally: QSTK"
pip install pandas
pip install scikits.statsmodels
pip install scikit-learn
pip install QSTK

