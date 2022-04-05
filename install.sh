#!/bin/bash
set -e
mkdir temp_try

bash ./shs/anaconda.sh
bash ./shs/fzf.sh
bash ./shs/fish.sh
bash ./shs/node.sh
bash ./shs/myblog.sh
bash ./shs/nvim.sh
bash ./shs/neoformat.sh
bash ./shs/pdfviewer.sh
bash ./shs/texlive.sh
bash ./shs/tmux.sh
bash ./shs/trash.sh
bash ./shs/yarn.sh

echo -e "\033[31m For Latex backwordsearch support, you need to add \"nvr --remote-silent +%l %f\" to your okular \033[0m"
echo -e "\033[31m For Latex backwordsearch support, you need to add \"nvr --remote-silent +%2 %1\" to your qpdfview \033[0m"
echo -e "\033[31m run :PluginInstall in your vim for installing some plugins \033[0m"
echo -e "\033[31m To install the package of latex using tlmgr, add '/usr/local/texlive/2021/bin/x86_64-linux' to the 'secure_path' in '/etc/sudoers' file, sudo tlmgr install xxx \033[0m"
