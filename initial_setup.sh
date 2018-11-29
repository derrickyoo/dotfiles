#!/bin/sh
apt update  # To get the latest package lists

apt install unbuntu-restricted-extras -y
apt install vim -y
apt install git -y
git config -g user.name "your name"
git config -g user.email "your_email@example.com"

# apt install curl -y
# Latest release, add this PPA
# curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
# LTS release, use this PPA
# curl -sL https://deb.nodesource.com/setup_8.x | sudo bash -

ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

apt install nodejs -y
apt install npm -y

npm install -g heroku

# heroku login
# heroku keys:add
# ssh -v git@heroku.com
# heroku create
# git push heroku
# heroku open

apt upgrade