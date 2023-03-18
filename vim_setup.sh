#!/bin/bash

repos=(https://github.com/kien/ctrlp.vim https://github.com/Raimondi/delimitMate https://github.com/mattn/emmet-vim https://github.com/tpope/vim-endwise https://github.com/tmhedberg/matchit https://github.com/scrooloose/nerdtree https://github.com/itmammoth/run-rspec.vim https://github.com/ervandew/supertab https://github.com/vim-airline/vim-airline https://github.com/tpope/vim-bundler https://github.com/flazz/vim-colorschemes https://github.com/tpope/vim-fugitive https://github.com/pangloss/vim-javascript https://github.com/MaxMEllon/vim-jsx-pretty https://github.com/terryma/vim-multiple-cursors https://github.com/tpope/vim-rails https://github.com/tpope/vim-ragtag https://github.com/vim-ruby/vim-ruby https://github.com/henrik/vim-ruby-runner https://github.com/tpope/vim-rvm https://github.com/tpope/vim-surround https://github.com/posva/vim-vue)

mkdir -p ~/.vim/bundle ~/.vim/autoload
for repo in "${repos[@]}"; do git clone ~/.vim/bundle/$repo; done

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

curl -fsSL https://gist.githubusercontent.com/jedrekdomanski/dd6c2d23fb9ae8c4e6a1424098325d78/raw/fa93737acce351775656b61f8b8db65089b5472c/vimrc -o ~/.vimrc
