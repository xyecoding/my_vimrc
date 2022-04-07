"====================================================================================
" markdown preview
"===================================================================================
"
"" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
" let g:mkdp_auto_start = 1

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
" let g:mkdp_browser = '/mnt/c/Program\ Files/Google/Chrome/Application/chrome.exe'
" let g:markdown_preview_sync_chrome_path = '/mnt/c/Program\ Files/Google/Chrome/Application/chrome.exe'
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1,
            \ 'sequence_diagrams': {},
            \ 'flowchart_diagrams': {},
            \ 'content_editable': v:false,
            \ 'disable_filename': 0
            \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
" let g:mkdp_markdown_css = expand('~/.vim_runtime/vimrcs/latex.cs')

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
"let g:mkdp_highlight_css = expand('~/.vim_runtime/my_plugins/markdown-preview.nvim/latex.css')

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
"let g:mkdp_page_title = '「${name}」'
let g:mkdp_page_title = '${name}'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']
autocmd FileType markdown nmap \ll  <Plug>MarkdownPreview




"==============================================================================================
"vimtex
"===============================================================================================
let g:tex_flavor='latex'

" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
" filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
" syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
"let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
" let g:vimtex_view_general_viewer = 'okular'
" let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

let g:vimtex_view_general_viewer = 'qpdfview'
let g:vimtex_view_general_options
            \ = '--unique @pdf\#src:@tex:@line:@col'


" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
"let g:vimtex_compiler_method = 'latexmk'



" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
" let maplocalleader = ","

let g:vimtex_quickfix_ignore_filters = [
            \ 'Warning',
            \ 'warning',
            \ 'badness',
            \ 'Overfull',
            \]
let g:vimtex_quickfix_mode = 0
augroup VimTeX
    autocmd!
    autocmd BufWritePost *.tex call vimtex#toc#refresh()
augroup END

" autocmd BufWrite *.tex :VimtexView
autocmd BufWrite *.tex :call vimtex#toc#refresh()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"supertab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:SuperTabDefaultCompletionType = "<c-n>"

"set complete=.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" snippets
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:UltiSnipsSnippetDirectories=["UltiSnips","../../vimrcs/my_snippets/"]
let g:UltiSnipsExpandTrigger="<C-K>"
let g:UltiSnipsJumpForwardTrigger="<C-K>"
let g:UltiSnipsJumpBackwardTrigger="<C-J>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" bullets.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bullets.vim
let g:bullets_enabled_file_types = [
            \ 'markdown',
            \ 'text',
            \ 'gitcommit',
            \ 'scratch'
            \]


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdcommenter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

map cc <plug>NERDCommenterComment
map oo <plug>NERDCommenterUncomment

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"indentLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_defaultGroup = 'SpecialKey'
" let g:indentLine_fileTypeExclude = ['tex']
" let g:indentLine_setConceal=0
let g:indentLine_faster = 1
let g:indentLine_bufTypeExclude=['tex']
let g:indentLine_showFirstIndentLevel=1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_conceallevel = 2
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = ''
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"IndentGuids
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:indent_guides_enable_on_vim_startup = 0
" let g:indent_guides_guide_size = 1
" let g:indent_guides_auto_colors = 0
" let g:indent_guides_tab_guides = 1
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=darkgrey ctermbg=white
" autocmd ViEnter,Colorscheme * :hi IndentGuidesEven guibg=grey ctermbg=red
" au VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=lightmagenta
" au VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey
" let g:indent_guides_color_change_percent = 1
" let g:indent_guides_start_level = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autoformat
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" au BufWrite * :Autoformat
" " let g:formatdef_remark_markdown = '"~/node/bin/remark --use remark-prettier --silent --no-color"'
" let g:formatdef_prettier = '"prettier --stdin-filepath ".expand("%:p")." --tab-width=".shiftwidth()."  --print-width 80 --prose-wrap always --no-bracket-spacing"'
" let g:formatters_markdown = ['prettier', 'stylelint']
"
" let g:formatdef_shfmt = '"~/go/bin/shfmt -i ".(&expandtab ? shiftwidth() : "0")'
" let g:formatters_sh = ['shfmt']
"
" let g:formatdef_latexindent = '"latexindent.pl -m -"'
" let g:formatters_tex = ['latexindent']
" let g:formatters_snippets = ['shfmt']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"neoformat
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup fmt
    autocmd!
    autocmd BufWritePre * Neoformat
augroup END

" Enable alignment
let g:neoformat_basic_format_align = 1
autocmd FileType snippets let g:neoformat_basic_format_align=0

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1
" let g:neoformat_verbose = 1


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
" let g:ctrlp_working_path_mode = 0
"
" " Quickly find and open a file in the current working directory
" " let g:ctrlp_map = '<C-f>'
" let g:ctrlp_map = '<leader>j'
" " map <leader>j :CtrlP<cr>
"
" " Quickly find and open a buffer
" map <leader>k :CtrlPBuffer<cr>
" map <leader>l :CtrlPMRU<cr>
"
" let g:ctrlp_max_height = 20
" let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale (syntax checker and linter)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
            \   'javascript': ['eslint'],
            \   'python': ['flake8'],
            \   'go': ['go', 'golint', 'errcheck'],
            \   'tex' : []
            \}
" \   'latex' : ['chktex', 'lacheck']
let g:ale_linters_explicit = 1
" Disabling highlighting
let g:ale_set_highlights = 0
" Set this. Airline will handle the rest.

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

let g:ale_sign_column_always = 1                    "符号槽始终开启
let g:ale_sign_error = '✘'                          "错误提示符。
let g:ale_sign_warning = 'W'                        "警告提示符。
let g:ale_echo_msg_error_str = 'E'                  "错误提示符。
let g:ale_echo_msg_warning_str = 'W'                "警告提示符。
" let g:airline#extensions#ale#enable = 1             "将ale信息在airline中显示。
"dense-analysis/ale
"跳转到上一个错误或警告信息。
nmap <silent> <c-u> <Plug>(ale_previous_wrap)
"跳转到下一个错误或警告信息。
nmap <silent> <c-d> <Plug>(ale_next_wrap)
let b:ale_fixers = ['prettier', 'eslint']




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-ariline and the theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:airline_section_b =
let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
let g:airline#extensions#quickfix#location_text = 'Location'
" let g:airline_section_b = '%-0.10{getcwd()}'
" let g:airline_section_c = '%t'
let g:airline_theme='apprentice'
function! s:update_highlights()
    hi CursorLine ctermbg=none guibg=NONE
    hi VertSplit ctermbg=none guibg=NONE
endfunction
autocmd User AirlineAfterTheme call s:update_highlights()
let g:airline_statusline_ontop = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 0
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#alt_sep = 1
" let g:airline#extensions#tabline#show_tabs = 1
" let g:airline#extensions#tabline#show_tab_count = 2
let g:airline#extensions#tabline#exclude_preview = 1
let g:airline#extensions#tabline#tab_nr_type = 2
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 1
" let g:airline#extensions#tabline#buf_label_first = 1
let tmux_w = 'buffer'
if exists('$TMUX')
    let tmux_w = system('tmux lsw | grep active')
    let tmux_w = split(split(tmux_w, '\*')[0],':')
    let tmux_w = join([tmux_w[1], tmux_w[0]], '-')
endif
let g:airline#extensions#tabline#buffers_label = tmux_w
let airline#extensions#tabline#current_first = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#fnamecollapse = 0
let airline#extensions#tabline#middle_click_preserves_windows = 1

let g:airline#extensions#vimtex#enabled = 1
let g:airline#extensions#vimtex#left = "{"
let g:airline#extensions#vimtex#right = "}"
let g:airline#extensions#vimtex#main = ""
let g:airline#extensions#vimtex#sub_main = "m"
let g:airline#extensions#vimtex#sub_local = "l"
let g:airline#extensions#vimtex#compiled = "c₁"
let g:airline#extensions#vimtex#continuous = "c"
let g:airline#extensions#vimtex#viewer = "v"
let g:airline#extensions#vimtex#wordcount = 0


let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#warning_symbol = 'W:'
let airline#extensions#ale#show_line_numbers = 1
let airline#extensions#ale#open_lnum_symbol = '(L'
let airline#extensions#ale#close_lnum_symbol = ')'

let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#coc#show_coc_status = 1

" let g:airline#extensions#ctrlp#show_adjacent_modes = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#fzf#enabled = 1


""""""""""""""""""""""""""""""""""""""""""""""
" undotree
""""""""""""""""""""""""""""""""""""""""""""""
let g:undotree_WindowLayout = 2
nnoremap <leader>ut :UndotreeToggle<CR><C-w>w<C-w>w
" nnoremap th :ThesaurusQueryReplaceCurrentWord<CR>
""""""""""""""""""""""""""""""""""""""""""""
" tagbar
""""""""""""""""""""""""""""""""""""""""""""
nnoremap tb :TagbarOpenAutoClose<CR>




""""""""""""""""""""""""""""""""""""
" fzf
""""""""""""""""""""""""""""""""""""
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
imap <leader><tab> <plug>(fzf-maps-i)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)


nnoremap <leader>j :Files<cr>
nnoremap <leader>k :Buffers<cr>
nnoremap <leader>l :History<cr>
nnoremap <leader>; :History:<cr>
nnoremap <leader>h :Snippets<cr>

let g:fzf_preview_window = 'right:40%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

function! s:list_buffers()
    redir => list
    silent ls
    redir END
    return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
    execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
            \ 'source': s:list_buffers(),
            \ 'sink*': { lines -> s:delete_buffers(lines) },
            \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
            \ }))

noremap <leader>bd :BD<CR>

let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.95 } }

""""""""""""""""""""""""""""""""""""""""""""
" vim-fish
""""""""""""""""""""""""""""""""""""""""""""
" Set up :make to use fish for syntax checking.
autocmd FileType fish compiler fish

" Set this to have long lines wrap inside comments.
autocmd FileType fish setlocal textwidth=80

" Enable folding of block structures in fish.
" autocmd FileType fish setlocal foldmethod=expr

" let g:leetcode_browser='/mnt/c/Program\ Files/Google/Chrome/Application/chrome.exe'

let g:vimwiki_list = [{'path': '~/mynote/',
            \ 'syntax': 'markdown', 'ext': '.md', 'auto_toc': 0, 'auto_tags': 0, 'auto_generate_links': 0, 'auto_generate_tags': 0}]
let g:vimwiki_autowriteall=0

