sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish
chsh -s /usr/bin/fish
fish
# with git
cd ~
git clone git@github.com:oh-my-fish/oh-my-fish.git
cd oh-my-fish
bin/install --offline
mv ~/.local/share/omf/themes/default/.git/config ~/.local/share/omf/themes/default/.git/config_b
ln -s ~/.vim_runtime/setting_files/omf/themes_config ~/.local/share/omf/themes/default/.git/config
mv ~/.local/share/omf/repositories ~/.local/share/omf/repositories_b
ln -s ~/.vim_runtime/setting_files/omf/repositories ~/.local/share/omf/repositories
mv ~/.local/share/omf/.git/config ~/.local/share/omf/.git/config_b
ln -s ~/.vim_runtime/setting_files/omf/omf_config ~/.local/share/omf/.git/config
omf install ays
omf install git@github.com:jethrokuan/fzf.git
~/anaconda3/bin/conda init fish
echo "source ~/.vim_runtime/config.fish" >>~/.config/fish/config.fish
omf install git@github.com:jethrokuan/z.git
