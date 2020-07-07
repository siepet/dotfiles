set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" SYNTAX HIGHLIGHTS
Plugin 'elixir-lang/vim-elixir' "syntax highlight for elixir
Plugin 'vim-ruby/vim-ruby' "ruby highlight
Plugin 'kchmck/vim-coffee-script' "coffee script highlight
Plugin 'slim-template/vim-slim.git' "slim syntax hightlight
Plugin 'othree/yajs.vim' " yet another js syntax
Plugin 'mxw/vim-jsx' "syntax for jsx
Plugin 'posva/vim-vue' "syntax for vue
Plugin 'leafgarland/typescript-vim' "syntax for ts
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive' "vim wrapper for git
Plugin 'thoughtbot/vim-rspec' " run rspec files from vim
Plugin 'tpope/vim-rails' " rails stuff, pretty nice
Plugin 'tpope/vim-bundler' " run bndler from vim
Plugin 'tpope/vim-rake' " useless for now, rails for normla ruby projects
Plugin 'tpope/vim-endwise' " adds end in ruby files wisely
Plugin 'c-brenn/phoenix.vim'
Plugin 'tpope/vim-projectionist'
Plugin 'scrooloose/nerdtree' "project tree, is cool
Plugin 'nanotech/jellybeans.vim' "colorscheme
Plugin 'tpope/vim-surround' " surround with what i need
Plugin 'flazz/vim-colorschemes'
Plugin 'ngmy/vim-rubocop' " :RuboCop to scan current file
Plugin 'bling/vim-airline' "line at the bottom of the file
Plugin 'dracula/vim'
Plugin 'tommcdo/vim-fugitive-blame-ext' " show commit message in airline
Plugin 'scrooloose/nerdcommenter' "fancy commenting lines
Plugin 'ap/vim-css-color' "show css colors
Plugin 'joker1007/vim-markdown-quote-syntax'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['typescript', 'css', 'less', 'scss', 'json'] }
"Plugin 'Chiel92/vim-autoformat'
"Plugin 'Chiel92/vim-autoformat'
call vundle#end()
syntax enable
filetype plugin indent on
set t_Co=256
nmap <leader>n :NERDTreeToggle<CR>
" fzf
let $FZF_DEFAULT_COMMAND='ag -g ""'
let $FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
autocmd! FileType fzf tnoremap <ESC> <c-c>
let g:fzf_history_dir = '~/.local/share/fzf-history'
" nnoremap <silent> <leader>mr :FZFMru<CR>
noremap <silent> <C-p> :FZF<CR>
" " nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>
" " nnoremap <silent> <leader>W :Windows<CR>
" " nnoremap <silent> <leader>; :BLines<CR>
" " nnoremap <silent> <leader>l :Lines<CR>
" " nnoremap <silent> <leader>o :BTags<CR>
" " nnoremap <silent> <leader>O :Tags<CR>
nnoremap <silent> <leader>mr :History<CR>
nnoremap <silent> <leader>a :execute 'Ag ' . input('Ag/')<CR>
" " nnoremap <silent> K :call SearchWordWithAg()<CR>
" " vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>
" " nnoremap <silent> <leader>gl :Commits<CR>
" " nnoremap <silent> <leader>ga :BCommits<CR>
" " nnoremap <silent> <leader>T :Filetypes<CR>
"
imap <C-x><C-f> <plug>(fzf-complete-file-ag)
imap <C-x><C-l> <plug>(fzf-complete-line)
"
" " imap <c-x><c-k> <plug>(fzf-complete-word)
" " imap <c-x><c-f> <plug>(fzf-complete-path)
" " imap <c-x><c-j> <plug>(fzf-complete-file-ag)
" " imap <c-x><c-l> <plug>(fzf-complete-line)
"RSpec.vim mappings
map <leader>t :call RunCurrentSpecFile()<CR>
map <leader>s :call RunNearestSpec()<CR>
map <leader>l :call RunLastSpec()<CR>
map <leader>a :call RunAllSpecs()<CR>
" map - :CtrlP %:p:h<CR>
nnoremap <silent> - :Files <C-R>=expand('%:h')<CR><CR>
map <S-j> :bn<cr>
map <S-k> :bp<cr>
"shows line number
set number
"allows usage of mouse
set mouse=a
set laststatus=2
"allows backspace over everything in insert moed
set sw=2 sts=2 et
au BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
au BufRead,BufNewFile *.es6 setfiletype javascript
set autoread
set eol
set backspace=indent,eol,start
set showmode
set showcmd
set history=1000
set noswapfile
" vimairline
"let g:airline_section_b = '%{strftime("%c")}'
" prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.ts,*.tsx,*.css,*.less,*.scss,*.json Prettier

" vim-autoformat
"autocmd BufWritePre *.html Autoformat

autocmd BufEnter * let &titlestring = hostname() . "[vim(" . expand("%:t") . ")]"
colorscheme dracula
" jellybeans
let g:vimrubocop_config = '~/.rubocop.yml'
" autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

set hlsearch

" The Silver Searcher
if executable('ag')
  " use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif
