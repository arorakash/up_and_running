
####################################################################################################



# generic package management

# Upgrade Packages
sudo pacman -Syu

# Clean up all local caches. 
sudo pacman -Sc

# Remove dependencies that are no longer needed
sudo pacman -Qdtq | sudo pacman -Rs -



####################################################################################################



# install yay package manager
sudo pacman -S yay --noconfirm;



####################################################################################################



# place_ssh_keys

# Set Download Directory
DOWNLOAD_DIRECTORY=$HOME/Downloads

# unzip file
unzip $DOWNLOAD_DIRECTORY/ssh_keypair.zip -d $DOWNLOAD_DIRECTORY;

# Set Target Directory
TARGET_DIRECTORY=$HOME/.ssh/

# Creating ~/.ssh/ directory
if [ -d $TARGET_DIRECTORY ]; then
    echo "~/.ssh/ directory already exists"
else
    echo "~/.ssh/ directory does not exists. creating one"
    mkdir $TARGET_DIRECTORY;
fi
echo ""

# move keypair to target directory
mv $DOWNLOAD_DIRECTORY/ssh_keypair/* $TARGET_DIRECTORY;

# Delete downloaded and extracted data
rm -rf $DOWNLOAD_DIRECTORY/ssh_keypair*;



####################################################################################################



# generate_ssh_keys

# install xclip
sudo pacman -S xclip --noconfirm;

# generate ssh keypair
ssh-keygen -t rsa -b 4096 -C "akash.arora73elearn@gmail.com"

# start ssh agent
eval "$(ssh-agent -s)"

# add private key to ssh agent
ssh-add ~/.ssh/id_rsa

# export public ssh key
cat ~/.ssh/id_rsa.pub >> $HOME/public_ssh_key.txt



####################################################################################################



# install_build_tools

# install gcc make
sudo pacman -S gcc make --noconfirm;



####################################################################################################



# install_tools

# install curl net-tools meld
sudo pacman -S curl net-tools meld --noconfirm;



####################################################################################################



# install_git
sudo pacman -S git --noconfirm;

# configure_git
git config --global user.name arorakash
git config --global user.email akash.arora73elearn@gmail.com
git config --global core.pager 'less -FRX'



####################################################################################################



# install_python3_pip

sudo pacman -S python-pip --noconfirm;
sudo pacman -S python-setuptools --noconfirm;
sudo pacman -S python-wheel --noconfirm;

# python-dev not found
# python3-venv already installed



####################################################################################################



# install_python_packages
python3 -m pip install tldr



####################################################################################################



# install_nodejs
sudo pacman -S nodejs npm --noconfirm;
sudo npm i -g npm
sudo npm i -g n
sudo n lts

# install_yarn
sudo pacman -S yarn --noconfirm;

# install_nvm
sudo pacman -S nvm --noconfirm;

# add_nvm_entries
echo '' >> ~/.bashrc;
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
echo '' >> ~/.bashrc;

echo '' >> ~/.zshrc;
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.zshrc
echo '' >> ~/.zshrc;



####################################################################################################



# install_chromium
sudo pacman -S chromium --noconfirm;



####################################################################################################



# install_chrome
yay -S google-chrome



####################################################################################################



# install_sublime_text using snap
# install_sublime_text using yay
yay -S sublime-text-4;



####################################################################################################



# install_pycharm using snap
# install_pycharm using yay
yay -S pycharm-community-edition;



####################################################################################################



# change default shell to zsh
chsh -s $(which zsh);

# other shell related commands

# check path of bash shell
# which bash

# check path of zsh shell
# which zsh

# display name of current shell
# echo $SHELL

# list all available shells
# cat /etc/shells

# change of shell requires restart
shutdown -r now;



####################################################################################################



# install_ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";



####################################################################################################



# configure_aliases

# set target dir
TARGET_DIRECTORY=$HOME/.oh-my-zsh/custom/

# move aliases.zsh to target directory
cp $PWD/ohmyzsh/aliases.zsh $TARGET_DIRECTORY;



####################################################################################################



# install_pyenv

# set clone dir
CLONE_DIRECTORY=$HOME/.pyenv/;

# cloning pyenv project
git clone https://github.com/pyenv/pyenv.git $CLONE_DIRECTORY;



####################################################################################################



# add_pyenv_environment_entries_in_shells_rc

# add in bashrc
echo '' >> ~/.bashrc;
echo 'export PYENV_ROOT=$HOME/.pyenv;' >> ~/.bashrc;
echo 'export PATH=$PYENV_ROOT/bin:$PATH;' >> ~/.bashrc;
echo 'eval "$(pyenv init --path)";' >> ~/.bashrc;
echo 'eval "$(pyenv init -)";' >> ~/.bashrc;
echo '' >> ~/.bashrc;

# add in zshrc
echo '' >> ~/.zshrc;
echo 'export PYENV_ROOT=$HOME/.pyenv;' >> ~/.zshrc;
echo 'export PATH=$PYENV_ROOT/bin:$PATH;' >> ~/.zshrc;
echo 'eval "$(pyenv init --path)";' >> ~/.zshrc;
echo 'eval "$(pyenv init -)";' >> ~/.zshrc;
echo '' >> ~/.zshrc;



####################################################################################################



# install_pyenv_virtualenv_plugin

# set clone dir
CLONE_DIRECTORY=$HOME/.pyenv/plugins/pyenv-virtualenv;

# cloning pyenv-virtualenv project
git clone https://github.com/pyenv/pyenv-virtualenv.git $CLONE_DIRECTORY;




####################################################################################################



# add_pyenv_virtualenv_environment_entries_in_shells_rc

# add in bashrc
echo '' >> ~/.bashrc;
echo 'eval "$(pyenv virtualenv-init -)";' >> ~/.bashrc;
echo '' >> ~/.bashrc;

# add in zshrc
echo '' >> ~/.zshrc;
echo 'eval "$(pyenv virtualenv-init -)";' >> ~/.zshrc;
echo '' >> ~/.zshrc;



####################################################################################################



# add_pipenv_environment_entries_in_shells_rc

# add in bashrc
echo '' >> ~/.bashrc;
echo 'export PIPENV_VENV_IN_PROJECT=1' >> ~/.bashrc;
echo '' >> ~/.bashrc;

# add in zshrc
echo '' >> ~/.zshrc;
echo 'export PIPENV_VENV_IN_PROJECT=1' >> ~/.zshrc;
echo '' >> ~/.zshrc;



####################################################################################################



# install_vscode using snap
# install_vscode using yay
yay -S vscode;



####################################################################################################



# install_postman using snap
# install_postman using yay
yay -S postman;



####################################################################################################



# add user to vboxsf group
sudo gpasswd -a $USER vboxsf



####################################################################################################



# set_gnome_behaviour
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews';
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"
gsettings get org.gnome.desktop.wm.keybindings minimize "['<Super>z']"

# https://askubuntu.com/questions/1298574/troubleshoot-keyboard-shortcut-view-split-on-right

# gsettings list-recursively org.gnome.desktop.wm.keybindings
# gsettings list-recursively org.gnome.mutter.keybindings



####################################################################################################



# install_persepolis
sudo pacman -S persepolis --noconfirm;



####################################################################################################




# install_telegram
sudo pacman -S telegram-desktop --noconfirm;




####################################################################################################




# install_teams
yay -S teams




####################################################################################################




# install_other_packages
sudo pacman -S ffmpeg tor variety vlc --noconfirm;




####################################################################################################



# generic package management

# Upgrade Packages
sudo pacman -Syu

# Clean up all local caches. 
sudo pacman -Sc

# Remove dependencies that are no longer needed
sudo pacman -Qdtq | sudo pacman -Rs -



####################################################################################################
