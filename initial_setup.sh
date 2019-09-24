#!/bin/sh
mkdir $HOME/.virtualenvs
mkdir $HOME/Projects

apt update  # To get the latest package lists

apt install -y code
apt install -y git
git config --global user.name "your name"
git config --global user.email "your_email@example.com"
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

apt install -y nodejs
apt install -y npm
apt install -y python3-pip
apt install -y build-essential libssl-dev libffi-dev python-dev
apt install -y unbuntu-restricted-extras
apt install -y vim
apt install -y virtualenv
apt install -y virtualenvwrapper

apt -y upgrade