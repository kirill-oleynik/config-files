let mapleader=","
set encoding=utf-8 nobomb
autocmd!

set nocompatible

filetype on
filetype plugin on
filetype indent on

set exrc

au BufWritePost .vimrc so $MYVIMRC
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead *.slim set ft=slim

call plug#begin()
Plug 'tpope/vim-sensible' " univeral set of defaults
Plug 'jiangmiao/auto-pairs' " insert or delete brackets, etc.
Plug 'tpope/vim-commentary' " comment line with 'gcc'
Plug 'scrooloose/nerdtree' " sidebar with files tree
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'ervandew/supertab'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter' " show git status for lines
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug '/usr/local/opt/fzf' " fzf search (installed using Homebrew)
Plug 'junegunn/fzf.vim' " fzf search

" Themes
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'elzr/vim-json'

" All of your Plugins must be added before the following line
call plug#end()
" Auto install all missing plugins on vim enter
" autocmd VimEnter *
"      \ if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
"     \|   PlugInstall | q
"     \| endif

" Invisible characters
set list
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_,extends:❯,precedes:❮

" Syntax coloring lines that are too long just slows down the world
" set synmaxcol=1200

set t_Co=256
set background=dark
colorscheme gruvbox

set number
set numberwidth=5

syntax enable
syntax on
syntax sync fromstart

set hlsearch                    " highlight the search
set ls=2                        " show a status line even if there's only one window

set updatetime=250              " allows GitGutter to updated marks frequently

" Improve vim's scrolling speed
set ttyfast
set ttyscroll=3
set lazyredraw

set wildmenu                    " show completion on the mode-line
set linespace=0                 " number of pixels between the lines
set splitright                  " open vertical splits on the right
set splitbelow                  " open the horizontal split below
set wrap                        " wrap long lines
set linebreak                   " break lines at word end
set nobackup                    " don't want no backup files
set nowritebackup               " don't make a backup before overwriting a file
set noswapfile                  " no swap files
set hidden                      " hide buffers when abandoned

" Time out on key codes but not mappings
set notimeout
set ttimeout
set ttimeoutlen=100

" Auto-reload buffers when files are changed on disk
set autoread

" Lines with equal indent form a fold.
set foldmethod=indent
set foldlevel=1
set foldnestmax=10
" Open all folds by default
set nofoldenable

set undofile                    " Save undo's after file closes
set undodir=~/.vim/undo         " where to save undo histories
set undolevels=1000             " How many undos
set undoreload=10000            " number of lines to save for undo

set vb                          " disable alert sound
set showcmd                     " display incomplete commands
set history=100                 " a ton of history

" Default shell and shell syntax and source ~/.bash_profile
set shell=/bin/sh
" let g:is_bash=1

" Whitespace
set tabstop=2 shiftwidth=2      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode
" remove whitespaces on save.
autocmd BufWritePre * :%s/\s\+$//e


" Searching
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set scrolloff=0                 " keep a 5 line padding when moving the cursor

set autoindent                  " indent on enter
set smartindent                 " do smart indenting when starting a new line
set shiftround                  " indent to the closest shiftwidth

set switchbuf=""                " do not move focus/cursor to where the buffer is already open
set tagbsearch                  " use binary searching for tags

" The "Press ENTER or type command to continue" prompt is jarring and usually unnecessary.
set shortmess=atI

" remove search highlighting
nnoremap <leader>h :noh<cr>
" json beautifier with jq (https://github.com/stedolan/jq)
nnoremap <leader>z :%!jq '.'<cr>
nnoremap ; :
nnoremap <leader>f :FZF<cr>
nnoremap <leader><S-f> :Ag<cr>

set ruler
set cursorline
set nowrap
set endofline

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
set go-=L
" autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %>
" correctly

" Switch between the last two files
nnoremap <leader><leader> <c-^> let g:airline_powerline_fonts = 1
let g:airline_theme = 'molokai'

" ruby path for RVM
let g:ruby_path = system('rvm current')
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails,ruby-1.9'

" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

nmap <C-\> :NERDTreeFind<CR>
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>j :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<CR>

" nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
" nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" Ag integration
let g:ackprg = 'ag --vimgrep'
