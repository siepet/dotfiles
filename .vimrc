set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'scrooloose/nerdtree'
Plugin 'nanotech/jellybeans.vim'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'ngmy/vim-rubocop'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
call vundle#end()
filetype plugin indent on
syntax on
set t_Co=256
nmap <leader>n :NERDTreeToggle<CR>
"RSpec.vim mappings
map <leader>t :call RunCurrentSpecFile()<CR>
map <leader>s :call RunNearestSpec()<CR>
map <leader>l :call RunLastSpec()<CR>
map <leader>a :call RunAllSpecs()<CR>
map <S-j> :bn<cr>
map <S-k> :bp<cr>
"shows line number
set number
"allows usage of mouse
set mouse=a
"allows backspace over everything in insert moed
set sw=2 sts=2 et
au BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
set autoread
set eol
set backspace=indent,eol,start
set showmode
set showcmd
set history=1000
set noswapfile
" vimairline
let g:airline_section_b = '%{strftime("%c")}'

autocmd BufEnter * let &titlestring = hostname() . "[vim(" . expand("%:t") . ")]"
colorscheme jellybeans
let g:vimrubocop_config = '~/rubocop.yml'
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
