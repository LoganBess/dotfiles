#!/bin/bash

mkdir -p ~/bin ~/cegep ~/projets

sudo pacman -Sy git code gcc gdb python3 python3-pip python-venv

echo "Bienvenue $(whoami)"
alias ls="ls -l -a"
alias c="clear"
alias grepc='grep --color=auto'

function mkcd() {
    mkdir -p "$1" && cd "$1"
}

function mkcode() {
    touch "$1" && code "$1"
}

export PS1="\w\$ "

function mrgrep() {
    grep -i --color=auto "$1" "${@:2}"
}

git config --global user.name "Logan Bessette"
git config --global user.email "loganbessette2006@gmail.com"
git config --global core.editor code
git config --global user.name "LoganBess"

echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc