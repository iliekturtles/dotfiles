cp bashrc ~/.bashrc

if [ ! -z $MSYSTEM ]; then
    dos2unix -n tmux.conf ~/.tmux.conf
    cp _vsvimrc ~/_vsvimrc
    cp minttyrc ~/.minttyrc
else
    cp tmux.conf ~/.tmux.conf
fi

. ~/.bashrc

./git-setup.sh

[ ! -d ~/.vim/bundle/Vundle.vim ] && \
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

./vim-setup.sh
