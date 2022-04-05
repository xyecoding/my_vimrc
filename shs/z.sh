~/z/z.sh (line 66): Unexpected ')' found, expecting '}'
                case "$*" in "$exclude"*) return;; esac
                                        ^
from sourcing file ~/z/z.sh
	called on line 10 of file ~/.config/fish/config.fish
from sourcing file ~/.config/fish/config.fish
	called during startup
source: Error while reading file '/home/yexiang/z/z.sh'
cd ~
git clone git@github.com:rupa/z.git
cd z
chmod +x z.sh
echo "bash ~/z/z.sh" >>~/.config/fish/config.fish
