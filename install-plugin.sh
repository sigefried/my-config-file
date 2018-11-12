#! /bin/bash
#
# install-plugin.sh
# Copyright (C) 2017 sigefried <sigefriedhyy@gmail.com>
#
# Distributed under terms of the MIT license.

if [ ! -e ~/bin ]
then
	mkdir ~/bin
fi

CURRENT_DIR=$(pwd)

# install fzf
if [ ! -e ~/.fzf ]
then
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install
fi

# install enhancd replacement for cd
if [ ! -e ~/bin/enhancd ]
then
	git clone https://github.com/b4b4r07/enhancd ~/bin/enhancd
fi


if ls / | grep "Applications" > /dev/null # if sys is os x then change sth.
then
  echo "System is Mac..."
else
  echo "System is Linux..."
  # install CLI tools
  sudo apt install tree
  ## file analyser replacement for ls
  sudo apt install nnn
  ## replacement for top
  sudo apt install htop
  ## replacement for df
  sudo apt install pydf
  ## replacement for traceroute
  sudo apt install mtr
  ## replacement for grep
  sudo apt install silversearcher-ag
  ## command line helper
  sudo apt install thefuck
  ## replacement for du
  sudo apt install ncdu
  ## fd replacement for find
  sudo dpkg -i fd-musl_7.2.0_amd64.deb
fi

echo "full install complete"

