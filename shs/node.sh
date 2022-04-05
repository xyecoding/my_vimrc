echo -e "\033[31m installing node \033[0m"
cd ~
wget https://nodejs.org/dist/v17.6.0/node-v17.6.0-linux-x64.tar.xz
tar xf node-v17.6.0-linux-x64.tar.xz
mv node-v17.6.0-linux-x64 node
sudo ln -s ~/node/bin/node /usr/bin/node
sudo ln -s ~/node/bin/npm /usr/bin/npm
echo "export PATH=~/node/bin:\$PATH" >>~/.bashrc
npm i hexo-cli -g
