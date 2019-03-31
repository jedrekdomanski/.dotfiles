#!/bin/bash

repos=(https://github.com/kien/ctrlp.vim https://github.com/Raimondi/delimitMate https://github.com/mattn/emmet-vim https://github.com/tpope/vim-endwise https://github.com/tmhedberg/matchit https://github.com/scrooloose/nerdtree https://github.com/itmammoth/run-rspec.vim https://github.com/ervandew/supertab https://github.com/vim-airline/vim-airline https://github.com/tpope/vim-bundler https://github.com/flazz/vim-colorschemes https://github.com/tpope/vim-fugitive https://github.com/pangloss/vim-javascript https://github.com/MaxMEllon/vim-jsx-pretty https://github.com/terryma/vim-multiple-cursors https://github.com/tpope/vim-rails https://github.com/tpope/vim-ragtag https://github.com/vim-ruby/vim-ruby https://github.com/henrik/vim-ruby-runner https://github.com/tpope/vim-rvm https://github.com/tpope/vim-surround https://github.com/posva/vim-vue)

for repo in "${repos[@]}"; do git clone "$repo"; done
