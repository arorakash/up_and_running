# install zsh shell
sudo apt install zsh -y;

# make zsh as default shell
sudo chsh -s $(which zsh);

# install ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";

