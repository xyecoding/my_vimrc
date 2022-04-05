# stty -ixon
set -x PATH ~/go/bin $PATH
set -x PATH ~/node/bin $PATH
set -x PATH ~/.local/bin $PATH
set -x PATH /usr/local/luarocks/bin $PATH
set -x PATH /usr/local/texlive/2021/bin/x86_64-linux $PATH

alias vi=nvim
alias vim=nvim
alias rm=trash-put
# shopt -s direxpand
set de /mnt/c/Users/12197/Desktop
set do /mnt/c/Users/12197/Downloads
alias ctp='cd ~/temp_try'
alias cvh='cd ~/.vim_runtime'
alias cbg='cd ~/myBlog'
alias cpp='cd ~/mypaper'
alias csn='cd ~/.vim_runtime/my_plugins_forked/vim-snippets/UltiSnips'
alias vvp='vi ~/.vim_runtime/vimrcs/my_plungins.vim'
alias vvi='vi ~/.vim_runtime/install_awesome_vimrc.sh'
alias vbr='vi ~/.bashrc'
alias cltp='rm -rf ~/temp_try/*'
set -U FZF_FIND_FILE_COMMAND "ag -l --hidden --ignore .git . \$dir 2> /dev/null"
# bind -M insert \ek 'set fish_bind_mode default'
