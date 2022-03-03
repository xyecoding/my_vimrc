Vim�UnDo� ��_}&��2��'�>�̈́�͸Ԉ��F����   �                                   b rp    _�                     9        ����                                                                                                                                                                                                                                                                                                                                                             b r&     �   8   :          5    call b:vimtex.viewer.compiler_callback(l:outfile)5��    8           5       7   �      5       7       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b r&    �   �   �          =  call writefile(l:available_servernames, s:nvim_servernames)�   �   �          !  " Write the pruned list to file�   �   �            endfor�   �   �          
    endtry�   �   �          	    catch�   �   �                call chanclose(l:socket)�   �   �          1      call add(l:available_servernames, l:server)�   �   �          2      let l:socket = sockconnect('pipe', l:server)�   �   �              try�   �   �          G  for l:server in vimtex#util#uniq_unsorted(l:servers + [v:servername])�   �   �          "  let l:available_servernames = []�   �   �          %  " Check which servers are available�   �   �                  \ : []�   �   �          (        \ ? readfile(s:nvim_servernames)�   �   �          2  let l:servers = filereadable(s:nvim_servernames)�   �   �            " Load servernames from file�   �   �            endfor�   �   �          O          \ printf("vimtex#view#inverse_search(%d, '%s')", a:line, a:filename))�   �   �              call remote_expr(l:server,�   �   �          +  for l:server in split(serverlist(), "\n")�   �   �            endfor�   �   �              call chanclose(l:socket)�   �   �          !          \ [a:line, a:filename])�   �   �          )          \ 'vimtex#view#inverse_search',�   �   �          !          \ 'nvim_call_function',�   �   �              call rpcnotify(l:socket,�   �   �          
    endtry�   �   �          	    catch�   �   �          >      let l:socket = sockconnect('pipe', l:server, {'rpc': 1})�   �   �              try�   �   �          .  for l:server in readfile(s:nvim_servernames)�   �   �          7  if !filereadable(s:nvim_servernames) | return | endif�   �   �          
  quitall!�   �   �            endif�   �   �          
    endtry�   �   �          	    catch�   �   �                endif�   �   �          9        call s:inverse_search_cmd_vim(a:line, a:filename)�   �   �          
      else�   �   �          :        call s:inverse_search_cmd_nvim(a:line, a:filename)�   �   �                if has('nvim')�   �   �              try�   �   �          %  if a:line > 0 && !empty(a:filename)�   �   �            " for more info.�   �   �          L  " command "VimtexInverseSearch". See ":help vimtex-synctex-inverse-search"�      �          M  " One may call this function manually, but the main usage is to through the�   z   |            endif�   y   {          6    doautocmd <nomodeline> User VimtexEventViewReverse�   x   z          +  if exists('#User#VimtexEventViewReverse')�   v   x            redraw�   u   w          &  call b:vimtex.viewer.xdo_focus_vim()�   t   v             execute 'normal!' a:line . 'G'�   r   t            endtry�   q   s          8    execute g:vimtex_view_reverse_search_edit_cmd l:file�   p   r            catch�   o   q               execute l:winnr . 'wincmd w'�   n   p              execute l:tabnr . 'tabnext'�   m   o          3    let [l:tabnr, l:winnr] = win_id2tabwin(l:winid)�   l   n          (    let [l:winid] = win_findbuf(l:bufnr)�   k   m            try�   j   l            let l:bufnr = bufnr(l:file)�   i   k          -  " * If tab/window exists, switch to it/them�   h   j          '  " Get buffer, window, and tab numbers�   f   h            endif�   e   g          	    endif�   d   f                return -4�   c   e          9            \ printf('File not readable: "%s"', l:file)])�   b   d          %            \ 'Reverse goto failed!',�   a   c                call vimtex#log#warning([�   `   b              else�   _   a                endtry�   ^   `                  return -3�   ]   _          G              \        g:vimtex_view_reverse_search_edit_cmd, l:file)])�   \   ^          .              \ printf('Command error: %s %s',�   [   ]          '              \ 'Reverse goto failed!',�   Z   \          !        call vimtex#log#warning([�   Y   [                catch�   X   Z          <        execute g:vimtex_view_reverse_search_edit_cmd l:file�   W   Y          	      try�   V   X              if filereadable(l:file)�   U   W            if !bufloaded(l:file)�   T   V            " Open file if necessary�   R   T          (  if mode() ==# 'i' | stopinsert | endif�   O   Q          5  if index(l:sources, l:file) < 0 | return -2 | endif�   N   P            endif�   M   O          F    call map(l:sources, {_, x -> vimtex#paths#join(b:vimtex.root, x)})�   L   N             if vimtex#paths#is_abs(l:file)�   K   M          (  let l:sources = copy(b:vimtex.sources)�   J   L          "  let l:file = resolve(a:filename)�   I   K          -  " Only activate in relevant VimTeX projects�   G   I          ,  if !exists('b:vimtex') | return -1 | endif�   F   H          #  " Only activate in VimTeX buffers�   @   B            endif�   ?   A          +    call b:vimtex.viewer.compiler_stopped()�   >   @          0  if exists('*b:vimtex.viewer.compiler_stopped')�   9   ;            endif�   8   :          7    " call b:vimtex.viewer.compiler_callback(l:outfile)�   6   8          0    if !filereadable(l:outfile) | return | endif�   5   7          )    let l:outfile = b:vimtex.viewer.out()�   3   5          0    if !b:vimtex.viewer.check() | return | endif�   2   4          1  if exists('*b:vimtex.viewer.compiler_callback')�   -   /            endif�   ,   .          1    call b:vimtex.viewer.view(a:0 > 0 ? a:1 : '')�   +   -          $  if exists('*b:vimtex.viewer.view')�   %   '            endtry�   $   &          
    return�   #   %          1          \ 'Please see :h g:vimtex_view_method')�   "   $          6          \ 'Invalid viewer: ' . g:vimtex_view_method,�   !   #              call vimtex#log#warning(�       "            catch /E117/�      !          A    let a:state.viewer = vimtex#view#{g:vimtex_view_method}#new()�                   try�                  augroup END�                N    autocmd User VimtexEventCompileStopped call vimtex#view#compiler_stopped()�                O    autocmd User VimtexEventCompileSuccess call vimtex#view#compiler_callback()�                    autocmd!�                  augroup vimtex_viewer�                0  if has_key(a:state, 'viewer') | return | endif�                ,  if !g:vimtex_view_enabled | return | endif�                  endif�                #    call s:nvim_prune_servernames()�                  if has('nvim')�                7  nnoremap <buffer> <plug>(vimtex-view) :VimtexView<cr>�   
             )        \ call vimtex#view#view(<q-args>)�   	             5  command! -buffer -nargs=? -complete=file VimtexView�      	          ,  if !g:vimtex_view_enabled | return | endif5��                         �                     �    	                     �                     �    
                                         �                         5                    �                         p                    �                         �                    �                         �                    �                         �                    �                         -                    �                         a                    �                         {                    �                         �                    �                         �                    �                         3                    �                         D                    �                         L                    �                          �                    �    !                     �                    �    "           
          �      
              �    #           
                
              �    $                     A                    �    %                     P                    �    +                     �                    �    ,                     �                    �    -                     �                    �    2                     O                    �    3                     �                    �    5                     �                    �    6                     �                    �    8                                         �    9                     Y                    �    >                     �                    �    ?                     �                    �    @                                         �    F                     q                    �    G                     �                    �    I                     �                    �    J                     �                    �    K                                         �    L                     G                    �    M                     j                    �    N                     �                    �    O                     �                    �    R                     �                    �    T                     %	                    �    U                     B	                    �    V                     \	                    �    W                     |	                    �    X                     �	                    �    Y                     �	                    �    Z                     �	                    �    [                     
                    �    \                     C
                    �    ]                     �
                    �    ^                     �
                    �    _                     �
                    �    `                                         �    a                                         �    b                     6                    �    c                     h                    �    d                     �                    �    e                     �                    �    f                     �                    �    h                     �                    �    i                                         �    j                     7                    �    k                     W                    �    l                     _                    �    m                     �                    �    n                     �                    �    o                     �                    �    p                                         �    q                                         �    r                     T                    �    t                     `                    �    u                     �                    �    v                     �                    �    x                     �                    �    y                     �                    �    z                     !                    �                         �                    �    �                     �                    �    �                     $                    �    �                     :                    �    �                     b                    �    �                     n                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                                         �    �                     1                    �    �                     ?                    �    �                     N                    �    �                     Y                    �    �                     �                    �    �                     �                    �    �                     (                    �    �                     4                    �    �                     y                    �    �                     �                    �    �                     �                    �    �           
          �      
              �    �           
          �      
              �    �           
                
              �    �                     D                    �    �                     e                    �    �                     �                    �    �                     �                    �    �           
                
              �    �                     h                    �    �                     �                    �    �                     �                    �    �                                         �    �                     A                    �    �                     Y                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     5                    �    �                     m                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    5�_�                   9   ;    ����                                                                                                                                                                                                                                                                                                                                                             b r]     �   8   ;   �      ;        " call b:vimtex.viewer.compiler_callback(l:outfile)5��    8   ;              
   X                     �    9   	                  b                     5�_�                    :       ����                                                                                                                                                                                                                                                                                                                                                             b r_     �   9   ;          	        "5��    9           	           Y      	               5�_�                    :        ����                                                                                                                                                                                                                                                                                                                                                             b rb     �   8   ;   �      ;        " call b:vimtex.viewer.compiler_callback(l:outfile)    �   9   ;   �       5��    8   ;                  X                     �    8   ;              
   X                     �    9   
                  c                     �    9   
                 c                    �    9   
                 c                    �    9                    g                    �    9   
                 c                    �    9   
                 c                    �    9   
              
   c             
       5�_�                     :       ����                                                                                                                                                                                                                                                                                                                                                             b ro    �   9   ;                  " VimtexView5��    9                     Y                    5�_�                   9   ;    ����                                                                                                                                                                                                                                                                                                                                                             b rV     �   8   :   �      ;        " call b:vimtex.viewer.compiler_callback(l:outfile)   	        "�   9   <   �              "    endif5��    8   ;              
   X                     �    9   	                  b                     �    9   	                  b                     5�_�                    9   ;    ����                                                                                                                                                                                                                                                                                                                                                             b rN     �   8   :   �      ;        " call b:vimtex.viewer.compiler_callback(l:outfile)   	        "�   9   <   �              "    endif5��    8   ;              
   X                     �    9   	                  b                     �    9   	                  b                     5��