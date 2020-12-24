#!/bin/bash

set -e

if [ ! -d "$HOME/.vim_runtime" ]; then
    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    cat ~/.vim_runtime/vimrcs/basic.vim > ~/.config/nvim/init.vim
    cat>>~/.config/nvim/init.vim<<EOF

" local config
source ~/.config/nvim/local.vim
EOF
fi

if [ ! -d "$HOME/.local/share/nvim/site/autoload" ]; then
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi

touch /tmp/ansible-nvim-lock

echo "Done :-)"
