set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim_runtime/my_plugins/Vundle.vim
" call vundle#begin()
call vundle#begin('~/.vim_runtime/my_plugins/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'git@github.com:ervandew/supertab.git'
Plugin 'VundleVim/Vundle.vim'
Plugin 'git@github.com:iamcco/markdown-preview.nvim.git'
Plugin 'git@github.com:dkarter/bullets.vim.git'
Plugin 'git@github.com:preservim/nerdcommenter.git'

" Plugin 'git@github.com:kien/rainbow_parentheses.vim.git'
" Plugin 'git@github.com:arnar/vim-matchopen.git'
Plugin 'git@github.com:sbdchd/neoformat.git'
" Plugin 'git@github.com:vim-pandoc/vim-pandoc.git'
" Plugin 'git@github.com:nathanaelkane/vim-indent-guides.git'
" Plugin 'git@github.com:vim-autoformat/vim-autoformat.git'
Plugin 'git@github.com:Yggdroot/indentLine.git'
"Plugin 'git@github.com:tpope/vim-repeat.git'
Plugin 'git@github.com:lervag/vimtex.git'
Plugin 'neoclide/coc.nvim'
Plugin 'sirver/UltiSnips'
Plugin 'honza/vim-snippets'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
