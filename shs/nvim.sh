echo -e "\033[31m installing neovim \033[0m"
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt install neovim -y

echo -e "\033[31m pip install pyvim and neovim-remote \033[0m"
~/anaconda3/bin/pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pynvim neovim-remote

cd ~/.vim_runtime

ln -s ~/.vim_runtime/.vimrc ~/.vimrc

mkdir -p ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

echo -e "\033[31m Disable the stty shortcuts such as ctrl s, for neovim will use them. \033[0m"
echo "stty -ixon" >>~/.bashrc
