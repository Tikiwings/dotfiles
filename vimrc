set nocompatible
filetype indent plugin on
syntax on
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=3
set softtabstop=3
set tabstop=3
set linebreak
set expandtab
" set columns=80
set nowrap
set showmatch
set history=1000
set showmode
set foldmethod=indent
set foldnestmax=3
set nofoldenable
set incsearch

set relativenumber

nnoremap <C-o> i
imap <C-o> <ESC>
map <nul> :NERDTreeToggle<CR>

hi LineNr ctermfg=8 ctermbg=NONE cterm=bold
hi CursorLineNr ctermfg=12 ctermbg=NONE cterm=bold

if empty(glob('~/.vim/autoload/plug.vim'))
   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdcommenter'
"Plug 'valloric/youcompleteme'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
"Plug 'w0rp/ale'

"Plug 'junegunn/fzf', { 'dir': '~.fzf', 'do': '.install --all' }
"Plug 'juneguun/fzf.vim'

Plug 'terryma/vim-multiple-cursors'
Plug 'itchyny/lightline.vim'
call plug#end()

