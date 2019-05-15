language en_US.utf8
map <C-t> :tabnew<CR>:e `pwd`<CR>
nmap <S-t> :tabclose<CR>
map <C-Right> :tabnext<CR>
imap <C-Right> <Esc>:tabnext<CR>i
map <C-Left> :tabprevious<CR>
imap <C-Left> <Esc>:tabprevious<CR>i
map <C-Down> <C-w><Down>
map <C-Up> <C-w><Up>
imap <S-C-d> <Esc>Ypi
nmap <S-C-d> <Esc>Yp
nmap <C-Q> :q<CR>
noremap <Leader>s <C-w>s<C-w><Down>
noremap <Leader>v <C-w>v<C-w><Right>
noremap <Leader>q :q<CR>
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set ruler
set ignorecase
set smartcase
set list listchars=tab:\ \ ,trail:·
set autoread
set shortmess+=I
set encoding=utf-8
set number
set hlsearch
nnoremap <F3> :set hlsearch! <CR>
execute pathogen#infect()
filetype on
filetype plugin on
filetype indent on
autocmd FileType ruby compiler ruby
syntax on
set nocompatible
set omnifunc=syntaxcomplete#Complete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcompletee#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
runtime macros/matchit.vim
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
colorscheme Benokai

"vim-ruby-runner
command! FR set filetype=ruby
let g:RubyRunner_key = '<Leader>r'
let g:RubyRunner_open_below = 1
let g:RubyRunner_window_size = 20

"Ctags
set tags=./tags;

set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set runtimepath^=~/.vim/bundle/ctrlp.vim

"run-rspec.vim
nnoremap <leader>t :w<CR>:RunSpec<CR>
nnoremap <leader>l :RunSpecLine<CR>
nnoremap <leader>e :RunSpecLastRun<CR>
let g:run_rspec_result_lines = 20

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = '%{rvm#statusline()}'

"Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <leader>n :NERDTreeToggle<CR>

map <Leader>c :w <CR> :!gcc % -o %< && ./%< <CR>
