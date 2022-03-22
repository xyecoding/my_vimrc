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
let g:mkdp_markdown_css = expand('~/.vim_runtime/vimrcs/latex.cs')

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





"==============================================================================================
"vimtex
"===============================================================================================
let g:tex_flavor='latex'

" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

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
au BufWrite * :Autoformat
let g:formatdef_remark_markdown = '"~/node/bin/remark --use remark-prettier --silent --no-color"'
let g:formatdef_prettier = '"prettier --stdin-filepath ".expand("%:p")." --tab-width=".shiftwidth()."  --print-width 80 --prose-wrap always --no-bracket-spacing"'
let g:formatters_markdown = ['prettier', 'stylelint']

let g:formatdef_shfmt = '"~/go/bin/shfmt -i ".(&expandtab ? shiftwidth() : "0")'
let g:formatters_sh = ['shfmt']
let g:formatdef_latexindent = '"~/anaconda3/bin/latexindent.pl -"'
let g:formatters_snippets = ['shfmt']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"neoformat
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" augroup fmt
"     autocmd!
"     autocmd BufWritePre * Neoformat
" augroup END
"
"
" " Enable alignment
" let g:neoformat_basic_format_align = 1
" autocmd FileType snippets let g:neoformat_basic_format_align=0
"
" " Enable tab to spaces conversion
" let g:neoformat_basic_format_retab = 1
"
" " Enable trimmming of trailing whitespace
" let g:neoformat_basic_format_trim = 1
" " let g:neoformat_verbose = 1
"




