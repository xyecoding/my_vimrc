
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" wrote by xye
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu
"set cursorline
"if empty(v:servername) && exists('*remote_startserver')
"      call remote_startserver('VIM')
"endif

inoremap   <C-S>   <ESC>:w<CR>
nnoremap    <C-S>   :w<CR>

inoremap   <C-Q>   <ESC>:q!<CR>
nnoremap    <C-Q>   :q!<CR>

inoremap   <C-A>   <ESC>:q<CR>
nnoremap    <C-A>   :q<CR>

inoremap   <A-,>   <ESC>:bp<CR>
nnoremap    <A-,>   :bp<CR>
inoremap   <A-.>   <ESC>:bn<CR>
nnoremap    <A-.>   :bn<CR>
autocmd BufNewFile,BufRead *.tex,*.md  set spell

set termguicolors
"colorscheme desert
set whichwrap=<,>,[,]

" colorscheme solarized
" colorscheme torte
" colorscheme delek

" highlight SpellBad ctermfg=009 ctermbg=012 guifg=black guibg=lightgray gui=None

" hi Pmenu          guifg=#f6f3e8     guibg=#444444     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
" hi PmenuSel       guifg=#000000     guibg=#cae682     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
" hi PmenuSbar        guifg=black       guibg=white       gui=NONE      ctermfg=black       ctermbg=white       cterm=NONE


noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
" nnoremap <tab> i<CR><Esc>
nnoremap ss :j2<CR>
nnoremap \d :bd<CR>
inoremap <C-L> <Right>
inoremap <C-j> <CR><Left>
" inoremap <C-H> <Left>
" colorscheme ir_black
colorscheme peaksea
" highlight SpellBad ctermfg=009 ctermbg=011 guifg=white guibg=grey
" highlight SpellBad ctermfg=009 ctermbg=011 guifg=#ff0000 guibg=#ffff00
" inoremap jk <esc>
" let g:python3_host_prog='/home/yexiang/anaconda3/bin/python'



""""""""""""""""""""""""""""""""""""
" highlight the words the same as the word cursor hold
""""""""""""""""""""""""""""""""""""
" function! HighlightWordUnderCursor()
"     let disabled_ft = ["qf", "fugitive", "nerdtree", "gundo", "diff", "fzf", "floaterm"]
"     if &diff || &buftype == "terminal" || index(disabled_ft, &filetype) >= 0
"         return
"     endif
"     if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
"         hi MatchWord cterm=undercurl  guibg=blue
"         " hi MatchWord cterm=undercurl gui=undercurl guibg=#3b404a
"         exec 'match' 'MatchWord' '/\V\<'.expand('<cword>').'\>/'
"     else
"         match none
"     endif
" endfunction
"
" augroup MatchWord
"     autocmd!
"     autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()
" augroup END
