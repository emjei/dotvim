## Installation

    git clone https://github.com/emjei/dotvim.git ~/.vim

Create symlinks (not required in newer VIM versions):

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule update --init

## Adding a submodule

    cd ~/.vim
    git submodule add <repo_url> bundle/<submodule_name>

## Removing a unneeded submodule

If for some reason you need to remove a submodule (e. g., you don't want to use it) and you have a fork or your own **dotvim** project then you can remove it like this:

    cd ~/.vim
	git submodule deinit bundle/<submodule_name>
	git rm --cached bundle/<submodule_name>

Also remove the bundle/<submodule_name> entry in .gitmodules file.

## Updating submodules

	git submodule foreach git pull origin master

## Notes

* vim-snipmate depends on tlib_vim and vim-addon-mw-utils so please don't delete them (unless deleting all 3 plugins together).
