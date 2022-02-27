This is my version of vim configuration.

# Requirement

config github

git config --global user.name "xyegithub"
git config --global user.email "xye@bupt.edu.cn"
ssh-keygen -t rsa -C "xye@bupt.edu.cn"
cat ~/.ssh/id_rsa.pub

ssh -T git@github.com

git clone git@github.com:xyegithub/my_vimrc.git ~/.vim_runtime
# Install

    git clone --depth=1 https://github.com/xyegithub/my_vimrc.git  ~/.vim_runtime
    bash ~/.vim_runtime/install_awesome_vimrc.sh

# How to uninstall

Just do following:

*   Remove `~/.vim_runtime`
*   Remove any lines that reference `.vim_runtime` in your `~/.vimrc`
