call plug#begin('~/.vim_runtime/my_plugins')


"Plug 'git@github.com:ervandew/supertab.git'
" Plug 'VundleVim/Vundle.vim'
" Plug 'git@github.com:iamcco/markdown-preview.nvim.git'
Plug 'git@github.com:dkarter/bullets.vim.git'
Plug 'git@github.com:preservim/nerdcommenter.git'

Plug 'git@github.com:vim-airline/vim-airline-themes.git'
Plug 'git@github.com:vim-airline/vim-airline.git'
Plug 'git@github.com:dense-analysis/ale.git'
Plug 'git@github.com:ctrlpvim/ctrlp.vim.git'
" Plug 'git@github.com:blindFS/vim-reveal.git'
" Plug 'git@github.com:kien/rainbow_parentheses.vim.git'
" Plug 'git@github.com:arnar/vim-matchopen.git'
" Plug 'git@github.com:sbdchd/neoformat.git'
" Plug 'git@github.com:vim-pandoc/vim-pandoc.git'
" Plug 'git@github.com:nathanaelkane/vim-indent-guides.git'
" Plug 'git@github.com:vim-autoformat/vim-autoformat.git'
Plug 'git@github.com:tommcdo/vim-exchange.git'
Plug 'git@github.com:altercation/vim-colors-solarized.git'
Plug 'git@github.com:Yggdroot/indentLine.git'
"Plug 'git@github.com:tpope/vim-repeat.git'
" Plug 'git@github.com:lervag/vimtex.git'
" Plug 'neoclide/coc.nvim'
Plug 'git@github.com:neoclide/coc.nvim.git', {'branch': 'release'}
" Plug 'sirver/UltiSnips'
" Plug 'honza/vim-snippets'
call plug#end()


function! OnVimEnter() abort
    " Run PlugUpdate every week automatically when entering Vim.
    if exists('g:plug_home')
        let l:filename = printf('%s/.vim_plug_update', g:plug_home)
        if filereadable(l:filename) == 0
            call writefile([], l:filename)
        endif

        let l:this_week = strftime('%Y_%V')
        let l:contents = readfile(l:filename)
        if index(l:contents, l:this_week) < 0
            call execute('PlugUpdate')
            call execute('PlugUpgrade')
            call writefile([l:this_week], l:filename, 'a')
        endif
    endif
endfunction

autocmd VimEnter * call OnVimEnter()
