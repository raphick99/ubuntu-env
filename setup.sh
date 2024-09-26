#!/bin/bash

# Set up bashrc
mkdir -p ~/.bash
cp aliases ~/.bash/

cp bashrc ~/.bashrc

# Set up tmux.conf
cp tmux.conf ~/.tmux.conf

# Set up gitconfig
cp gitconfig ~/.gitconfig

# case insensitive auto-completion
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi
echo 'set completion-ignore-case On' >> ~/.inputrc

# basic installations
sudo apt install -y tmux vim figlet
