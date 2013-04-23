#!/bin/sh

# ======================================================================
# This is a script where you want to place the configuration file.
#
# ======================================================================

if [ ! -d ~/dotfiles/vimfiles/vundle.git ]
then
    CUR_DIR=`pwd`
    cd ~/dotfiles
    git submodule add http://github.com/gmarik/vundle.git ~/dotfiles/vimfiles/vundle.git
    cd ${CUR_DIR}
fi

if [ ! -f ~/.screenrc ]
then
    /usr/bin/ln -s ~/dotfiles/.screenrc ~/.screenrc
fi

if [ ! -f ~/.vimrc ]
then
    /usr/bin/ln -s ~/dotfiles/.vimrc ~/.vimrc
fi

if [ ! -f ~/.bashrc ]
then
    /usr/bin/ln -s ~/dotfiles/.bashrc ~/.bashrc
fi

if [ ! -d ~/.vim ]
then
    /usr/bin/ln -s ~/dotfiles/vimfiles ~/.vim
fi

if [ ! -d ~/dotfiles/vimfiles/bundle ]
then
    /usr/bin/mkdir ~/dotfiles/vimfiles/bundle
    /usr/bin/ln -s ~/dotfiles/vimfiles/vundle.git ~/dotfiles/vimfiles/bundle/vundle
fi
