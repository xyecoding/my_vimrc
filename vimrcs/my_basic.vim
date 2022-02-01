
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" wrote by xye
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu
set cursorline 
if empty(v:servername) && exists('*remote_startserver')
      call remote_startserver('VIM')
endif

imap   <C-S>   <ESC>:w<CR>
nmap    <C-S>   :w<CR>

imap   <C-Q>   <ESC>:q!<CR>
nmap    <C-Q>   :q!<CR>

imap   <C-A>   <ESC>:q<CR>
nmap    <C-A>   :q<CR>

autocmd BufNewFile,BufRead *.tex,*.md  set spell

"colorscheme desert
set whichwrap=<,>,[,]
colorscheme desert
hi SpellBad cterm=None ctermbg=gray ctermfg=black

