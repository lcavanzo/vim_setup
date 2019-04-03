#!/bin/bash
mkdir -p ~/.vim/bundle
git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cat base_rc > ~/.vimrc
printf "set nocompatible\nset rtp+=~/.vim/bundle/Vundle.vim\ncall vundle#begin()\nPlugin 'VundleVim/Vundle.vim'\nPlugin 'rstacruz/sparkup', {'rtp': 'vim'}\n" >> ~/.vimrc

# install git stuff
printf "Plugin 'tpope/vim-fugitive'\n" >> ~/.vimrc

# install colorscheme
printf "Plugin 'morhetz/gruvbox'\n" >> ~/.vimrc

printf "call vundle#end()\n" >> ~/.vimrc
vim +PluginInstall +qall

printf "set term=screen-256color\nset background=dark\ncolorscheme gruvbox" >> ~/.vimrc

echo "~/.vim/bundle/gruvbox/gruvbox_256palette.sh" >> ~/.bash_profile

pip3 install --user pynvim
