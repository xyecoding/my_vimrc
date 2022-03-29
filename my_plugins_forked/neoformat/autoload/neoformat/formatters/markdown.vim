function! neoformat#formatters#markdown#enabled() abort
    " return ['remark', 'prettierd', 'prettier', 'denofmt']
    return ['prettierd', 'prettier', 'denofmt']
endfunction

function! neoformat#formatters#markdown#prettier() abort
    return {
                \ 'exe': 'prettier',
                \ 'args': ['--no-bracket-spacing --embedded-language-formatting auto  --print-width 80 --prose-wrap always   --stdin-filepath', '"%:p"'],
                \ 'stdin': 1,
                \ 'try_node_exe': 1,
                \ }
endfunction

function! neoformat#formatters#markdown#prettierd() abort
    return {
                \ 'exe': 'prettierd',
                \ 'args': ['"%:p"'],
                \ 'stdin': 1,
                \ }
endfunction

function! neoformat#formatters#markdown#remark() abort
    return {
                \ 'exe': 'remark',
                \ 'args': ['--use remark-prettier', '--no-color', '--silent'],
                \ 'stdin': 1,
                \ 'try_node_exe': 1,
                \ }
endfunction

function! neoformat#formatters#markdown#denofmt() abort
    return {
                \ 'exe': 'deno',
                \ 'args': ['fmt','-'],
                \ 'stdin': 1,
                \ }
endfunction
