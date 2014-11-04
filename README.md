Installation:

    git clone https://github.com/emjei/dotvim.git ~/.vim

Create symlinks (not required in newer VIM versions):

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule update --init
