Vim�UnDo� ڣ��`�͔n���w�w���'K>�u���C�   �           '                       bA	�    _�                     �   '    ����                                                                                                                                                                                                                                                                                                                                                             bA	      �   �   �   �      a    nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"5��    �   '                 �                    5�_�                    �   '    ����                                                                                                                                                                                                                                                                                                                                                             bA	     �   �   �   �      p    inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"5��    �   '                 �                    5�_�                    �   '    ����                                                                                                                                                                                                                                                                                                                                                             bA	    �   �   �   �      a    vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"5��    �   '                 h                    5�_�                             ����                                                                                                                                                                                                                                                                                                                               ,       �          V   \    bA	�    �   �   �          endif�   �   �          a    vnoremap <silent><nowait><expr> <C-n> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"�   �   �          a    vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"�   �   �          p    inoremap <silent><nowait><expr> <C-n> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"�   �   �          q    inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"�   �   �          a    nnoremap <silent><nowait><expr> <C-n> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"�      �          a    nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"�   ~   �          -if has('nvim-0.4.0') || has('patch-8.2.0750')5��    ~           -       /   
      -       /       �               a       c   :      a       c       �    �           a       c   �      a       c       �    �           q       s         q       s       �    �           p       r   v      p       r       �    �           a       c   �      a       c       �    �           a       c   M      a       c       �    �                     �                    5��