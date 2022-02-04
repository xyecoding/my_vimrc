
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" wrote by xye
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu
set cursorline 
"if empty(v:servername) && exists('*remote_startserver')
"      call remote_startserver('VIM')
"endif

imap   <C-S>   <ESC>:w<CR>
nmap    <C-S>   :w<CR>

imap   <C-Q>   <ESC>:q!<CR>
nmap    <C-Q>   :q!<CR>

imap   <C-A>   <ESC>:q<CR>
nmap    <C-A>   :q<CR>

autocmd BufNewFile,BufRead *.tex,*.md  set spell

"colorscheme desert
set whichwrap=<,>,[,]
"highlight SpellBad cterm=None ctermbg=gray ctermfg=black
colorscheme desert
"highlight SpellBad ctermfg=009 ctermbg=011 guifg=#ff0000 guibg=#ffff00
highlight SpellBad ctermfg=009 ctermbg=012 guifg=black guibg=lightgray gui=None

