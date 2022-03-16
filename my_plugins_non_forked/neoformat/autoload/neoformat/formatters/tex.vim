function! neoformat#formatters#tex#enabled() abort
    return ['latexindent']
endfunction

function! neoformat#formatters#tex#latexindent() abort
    return {
                \ 'exe': 'latexindent.pl',
                \ 'args': ['-g /dev/stderr','-m' ,'2>/dev/null'],
                \ 'stdin': 1,
                \ }
endfunction
