#
# Run this script to get set up
#

# clone the repo down
rm -rf ~/.dotfiles
rm -rf ~/.oh-my-zsh
git clone git@github.com:Techwraith/dotfiles.git ~/.dotfiles

# install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# install custom zsh theme
ln -s ~/.dotfiles/zsh/zen.zsh-theme ~/.oh-my-zsh/themes/zen.zsh-theme

# install custom zshrc and friends
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/zsh/.zsh_aliases ~/.zsh_aliases
ln -sf ~/.dotfiles/zsh/.zsh_exports ~/.zsh_exports
ln -sf ~/.dotfiles/zsh/.zsh_functions ~/.zsh_functions

# load vimrc.local and vimrc.bundles.local
ln -sf ~/.dotfiles/vim/.vimrc.local ~/.vimrc.local
ln -sf ~/.dotfiles/vim/.vimrc.bundles.local ~/.vimrc.bundles.local

# install spf13
curl https://raw.github.com/spf13/spf13-vim/3.0/bootstrap.sh -L | sh
vim +BundleInstall! +BundleClean! +qall
