echo ""

# install zsh shell
echo "installing zsh shell"
sudo apt install zsh -y;
echo "installed"

# make zsh as default shell
echo "making zsh as default shell"
sudo chsh -s $(which zsh);
echo "zsh is now the default shell"

# get ohmyzsh install script and run it
echo "getting ohmyzsh install script and running it"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
echo "ohmyzsh installed"
echo ""
