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
