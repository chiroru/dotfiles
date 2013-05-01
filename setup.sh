#!/bin/sh

# ======================================================================
# This is a script where you want to place the configuration file.
#
# ======================================================================

if [ ! -f ${HOME}/.bashrc ]; then
    /usr/bin/ln -s ${HOME}/dotfiles/.bashrc ${HOME}/.bashrc
fi

if [ ! -f ${HOME}/.screenrc ]; then
    /usr/bin/ln -s ${HOME}/dotfiles/.screenrc ${HOME}/.screenrc
fi

if [ ! -f ${HOME}/.vimrc ]; then
    /usr/bin/ln -s ${HOME}/dotfiles/.vimrc ${HOME}/.vimrc
fi

if [ ! -d ${HOME}/.vim ]; then
    /usr/bin/ln -s ${HOME}/dotfiles/vimfiles ${HOME}/.vim
fi

if [ ! -d ${HOME}/dotfiles/vimfiles/vundle.git ]; then
    CUR_DIR=`pwd`
    cd ${HOME}/dotfiles
    git submodule add http://github.com/gmarik/vundle.git ${HOME}/dotfiles/vimfiles/vundle.git
    cd ${CUR_DIR}
fi

if [ ! -d ${HOME}/dotfiles/vimfiles/bundle ]; then
    /usr/bin/mkdir ${HOME}/dotfiles/vimfiles/bundle
    /usr/bin/ln -s ${HOME}/dotfiles/vimfiles/vundle.git ${HOME}/dotfiles/vimfiles/bundle/vundle
fi

#if [ ! -d ${HOME}/dotfiles/vimfiles/bundle/zenconfig-vim.git ]; then
#    git clone http://github.com/mattn/zencoding-vim.git ${HOME}/dotfiles/vimfiles/bundle/zenconfig-vim.git
#fi

if [ ! -f ${HOME}/.environment.conf ]; then
  cp ${HOME}/dotfiles/skel/.environment.conf ${HOME}/.environment.conf
fi
