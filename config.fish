# stty -ixon
set -x PATH ~/go/bin $PATH
set -x PATH ~/node/bin $PATH
set -x PATH ~/.local/bin $PATH
set -x PATH /usr/local/luarocks/bin $PATH
set -x PATH /usr/local/texlive/2021/bin/x86_64-linux $PATH

alias vi nvim
alias v nvim
alias vim nvim
alias rm trash-put
# shopt -s direxpand
set de /mnt/c/Users/12197/Desktop
set do /mnt/c/Users/12197/Downloads
alias ctp 'cd ~/temp_try'
alias cvh 'cd ~/.vim_runtime'
alias cvv 'cd ~/.vim_runtime/vimrcs'
alias cbg 'cd ~/myBlog'
alias cpp 'cd ~/mypaper/JIFS-OACNN'
alias csn 'cd ~/.vim_runtime/my_plugins_forked/vim-snippets/UltiSnips'
alias vvp 'vi ~/.vim_runtime/vimrcs/my_plungins.vim'
alias vvmp 'vi ~/.vim_runtime/vimrcs/vim_plug.vim'
alias vvb 'vi ~/.vim_runtime/vimrcs/my_basic.vim'
# alias vvi 'vi ~/.vim_runtime/install_awesome_vimrc.sh'
alias vfc 'vi ~/.vim_runtime/config.fish'
alias cltp 'rm ~/temp_try/*'
alias wda 'fish ~/myDiary/create_diary.fish'
alias cda 'cd ~/myDiary'
alias tnw 'tmux new-window -n'
alias bk '~/.vim_runtime/fish_scripts/backup_files.fish'

set -U FZF_FIND_FILE_COMMAND "ag -l --hidden --ignore .git . \$dir 2> /dev/null"
# bind -M insert \ek 'set fish_bind_mode default'
# set -gx Z_SCRIPT_PATH ~/z/z.sh
