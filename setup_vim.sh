#!/bin/bash

# directory for undo history
mkdir -p ~/.vim/undo

# directory for bundle plugin
mkdir -p ~/.vim/bundle

#git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# copy our base configuration
cat base_rc > ~/.vimrc
printf "set nocompatible\nset rtp+=~/.vim/bundle/Vundle.vim\ncall vundle#begin()\nPlugin 'VundleVim/Vundle.vim'\nPlugin 'rstacruz/sparkup', {'rtp': 'vim'}\n" >> ~/.vimrc

# install git stuff
printf "Plugin 'tpope/vim-fugitive'\n" >> ~/.vimrc

# install colorscheme
printf "Plugin 'morhetz/gruvbox'\n" >> ~/.vimrc

# install SimplyFold
printf "Plugin 'tmhedberg/SimpylFold'\n" >> ~/.vimrc

# install syntastic
printf "Plugin 'vim-syntastic/syntastic'\n" >> ~/.vimrc

# install syntastic
printf "Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}'\n" >> ~/.vimrc

# install nerdtree
printf "Plugin 'scrooloose/nerdtree'\n" >> ~/.vimrc

printf "call vundle#end()\n" >> ~/.vimrc
vim +PluginInstall +qall

printf "set term=xterm-256color\nset background=dark\ncolorscheme gruvbox" >> ~/.vimrc

echo "~/.vim/bundle/gruvbox/gruvbox_256palette.sh" >> ~/.bash_profile

pip3 install --user pynvim
