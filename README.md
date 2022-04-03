This is my version of vim configuration.

# Requirement

config github

```bash
git config --global user.name "xyegithub"
git config --global user.email "xye@bupt.edu.cn"
ssh-keygen -t rsa -C "xye@bupt.edu.cn"
cat ~/.ssh/id_rsa.pub
```

```bash
ssh -T git@github.com
git clone git@github.com:xyegithub/my_vimrc.git ~/.vim_runtime
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
    refreshed when the tex file is saved. To overcome this, the source file of
    vimtex is modified `vimtex/autoload/vimtex/view.vim`. line 57
    `call b:vimtex.viewer.compiler_callback(l:outfile)` is changed into
    `VimtexView`. **However, a more elegant method is to enable the
    `Auto-refresh` setting in qpdfview.**

# Neoformat

1.  `latexindent.pl` use `"\t"` as the default indent char, which conflicts with
    vim-indent-guide. To change the default indent char of `latexindent.pl`, the
    147 line of `~/anaconda3/bin/LatexIndent/defaultSettings.yaml` is changed
    into `defaultIndent:" "`.
2.  To restrict the number of chars contained in a line, one should allow
    `linebreak` in latexindent.pl. To do this, First, add `-m` to the `args` in
    `neoformat/autoload/neoformat/formatters/tex.vim`. Secondly, change the 513
    line in file `~/anaconda3/bin/LatexIndent/defaultSettings.yaml` to set the
    number of columns.
3.  [The document of latexindent ](https://ctan.math.illinois.edu/support/latexindent/documentation/latexindent.pdf)
    says that latexindent allows multiple spaces to single. However, my
    latexindent does not acheive that correctly, even when I set
    `multipleSpacesToSingle: 1`.
4.  The position of args is important. When I set args
    `'args': ['--no-bracket-spacing --stdin-filepath', '"%:p"']` for markdown
    files, it works correctly. However, when I set it as
    `'args': ['--stdin-filepath --no-bracket-spacing', '"%:p"']`, it does not
    run correctly.
