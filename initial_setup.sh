#!/bin/sh
apt update  # To get the latest package lists

apt install -y python3-pip
apt install -y python3-venv
apt install build-essential libssl-dev libffi-dev python-dev

apt install -y unbuntu-restricted-extras
apt install -y vim
apt install -y git
git config -g user.name "your name"
git config -g user.email "your_email@example.com"

# apt install curl -y
# Latest release, add this PPA
# curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
# LTS release, use this PPA
# curl -sL https://deb.nodesource.com/setup_8.x | sudo bash -

ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

apt install -y nodejs
apt install -y npm

npm install -g heroku

# heroku login
# heroku keys:add
# ssh -v git@heroku.com
# heroku create
# git push heroku
# heroku open

apt -y upgrade