git config --global http.proxy http://127.0.0.1:1080
git config --global https.proxy https://127.0.0.1:1080
git config --global --unset http.proxy
git config --global --unset https.proxy
curl -fsSL https://fnm.vercel.app/install | bash
source ~/.config/fish/conf.d/fnm.fish
fnm completions --shell fish
fnm install 17.9.0
npm i hexo-cli -g
