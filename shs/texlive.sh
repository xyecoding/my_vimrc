echo -e "\033[31m installing texlive \033[0m"
cd ~
mkdir texlive
cd texlive
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar -zxvf install-tl-unx.tar.gz
cd $(ls -d */)
sudo perl install-tl
echo "export PATH=\"/usr/local/texlive/2021/bin/x86_64-linux:\$PATH\"" >>~/.bashrc
