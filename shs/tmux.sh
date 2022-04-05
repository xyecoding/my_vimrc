echo -e "\033[31m installing tmux \033[0m"
sudo apt install tmux -y
echo -e "\033[31m config tmux \033[0m"
ln -s ~/.vim_runtime/.tmux.conf ~/.tmux.conf
