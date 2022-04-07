call plug#begin('~/.vim_runtime/my_plugins')
Plug 'git@github.com:dkarter/bullets.vim.git'
" Plug 'git@github.com:iamcco/markdown-preview.nvim.git', {'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'git@github.com:iamcco/markdown-preview.nvim.git', { 'do': 'cd app && yarn install'  }
Plug 'git@github.com:preservim/nerdcommenter.git'

Plug 'git@github.com:dag/vim-fish.git'
Plug 'git@github.com:vim-airline/vim-airline-themes.git'
Plug 'git@github.com:vim-airline/vim-airline.git'
Plug 'git@github.com:dense-analysis/ale.git'
" Plug 'git@github.com:ctrlpvim/ctrlp.vim.git'
Plug 'git@github.com:jiangmiao/auto-pairs.git'
Plug 'git@github.com:junegunn/fzf.git', { 'do': { -> fzf#install() } }
Plug 'git@github.com:junegunn/fzf.vim.git'
" Plug 'git@github.com:blindFS/vim-reveal.git'
" Plug 'git@github.com:kien/rainbow_parentheses.vim.git'
" Plug 'git@github.com:arnar/vim-matchopen.git'
" Plug 'git@github.com:sbdchd/neoformat.git'
" Plug 'git@github.com:vim-pandoc/vim-pandoc.git'
" Plug 'git@github.com:nathanaelkane/vim-indent-guides.git'
" Plug 'git@github.com:vim-autoformat/vim-autoformat.git'
Plug 'git@github.com:tommcdo/vim-exchange.git'
Plug 'git@github.com:Yggdroot/indentLine.git'
Plug 'git@github.com:lervag/vimtex.git'
Plug 'git@github.com:neoclide/coc.nvim.git', {'branch': 'release'}
Plug 'git@github.com:preservim/nerdtree.git'
Plug 'git@github.com:preservim/vim-markdown.git'
" Plug 'git@github.com:vim-ctrlspace/vim-ctrlspace.git'
Plug 'git@github.com:SirVer/ultisnips.git'
" Plug 'git@github.com:honza/vim-snippets.git'
" Plug 'git@github.com:Ron89/thesaurus_query.vim.git'
" Plug 'git@github.com:vim-scripts/taglist.vim.git'

" Plug 'git@github.com:vimwiki/vimwiki.git'

" Plug 'git@github.com:ianding1/leetcode.vim.git'
Plug 'git@github.com:preservim/tagbar.git'
Plug 'git@github.com:mbbill/undotree.git'
""""""""""""""""""""""""""""""""""""
" color  themes
""""""""""""""""""""""""""""""""""""
" Plug 'git@github.com:altercation/vim-colors-solarized.git'
" Plug 'git@github.com:wesgibbs/vim-irblack.git'
Plug 'git@github.com:vim-scripts/peaksea.git'
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
