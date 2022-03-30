
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" wrote by xye
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu
"set cursorline
"if empty(v:servername) && exists('*remote_startserver')
"      call remote_startserver('VIM')
"endif

imap   <C-S>   <ESC>:w<CR>
nmap    <C-S>   :w<CR>

imap   <C-Q>   <ESC>:q!<CR>
nmap    <C-Q>   :q!<CR>

imap   <C-A>   <ESC>:q<CR>
nmap    <C-A>   :q<CR>

imap   <A-,>   <ESC>:bp<CR>
nmap    <A-,>   :bp<CR>
imap   <A-.>   <ESC>:bn<CR>
nmap    <A-.>   :bn<CR>
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

" Enable filetype plugins
filetype plugin on
filetype indent on

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
" nmap <tab> i<CR><Esc>
nmap ss :j2<CR>
nmap \d :bd<CR>
imap <C-L> <Right>
" imap <C-H> <Left>
" colorscheme ir_black
colorscheme peaksea
" highlight SpellBad ctermfg=009 ctermbg=011 guifg=white guibg=grey
" highlight SpellBad ctermfg=009 ctermbg=011 guifg=#ff0000 guibg=#ffff00
" inoremap jk <esc>
