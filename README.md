This is my version of vim configuration.

# Requirement

config github

```bash
git config --global user.name "xyegithub"
git config --global user.email "xye@bupt.edu.cn"
ssh-keygen -t rsa -C "xye@bupt.edu.cn"
cat ~/.ssh/id\_rsa.pub
```

```bash
ssh -T git@github.com
git clone git@github.com:xyegithub/my\_vimrc.git ~/.vim\_runtime
```

# Install

    git clone --depth=1 https://github.com/xyegithub/my_vimrc.git  ~/.vim_runtime
    bash ~/.vim_runtime/install_awesome_vimrc.sh

# How to uninstall

Just do following:

- Remove `~/.vim_runtime`

- Remove any lines that reference `.vim_runtime` in your `~/.vimrc`

# Some modifies or notations about plugins

## Vimtex

### Notations

1.  When more than one tex files are edited all using vimtex, the pdf can not be
    refreshed when the tex file is saved. To overcome this, the source file of vimtex is
    modified `vimtex/autoload/vimtex/view.vim`.
    line 57 `call b:vimtex.viewer.compiler_callback(l:outfile)` is changed into `VimtexView`.
    **However, a more elegant method is to enable the `Auto-refresh` setting in qpdfview.**
