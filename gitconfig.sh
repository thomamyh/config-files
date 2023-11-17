#!/bin/bash

read -p "Username: " username
read -p "E-mail address: " email

git config --global user.name "$username"
git config --global user.email "$email"

git config --global core.editor vim
git config --global init.defaultBranch main
