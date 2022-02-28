
####################################################################################################



SLEEP_TIME=3;



####################################################################################################



# # generic package management
# echo ""
# echo ""
# echo "updating package databases"
# sudo pacman -Syy;
# echo "package databases updated"
# echo ""
# echo ""
# sleep $SLEEP_TIME;

# # Upgrade Packages
# echo ""
# echo ""
# echo "updating packages"
# sudo pacman -Syu --noconfirm;
# echo "packages updated"
# echo ""
# echo ""
# sleep $SLEEP_TIME;

# # Clean up all local caches.
# echo ""
# echo ""
# echo "cleaning local caches"
# sudo pacman -Sc --noconfirm;
# echo "local caches cleaned"
# echo ""
# echo ""
# sleep $SLEEP_TIME;

# # Remove dependencies that are no longer needed
# # sudo pacman -Qdtq | sudo pacman -Rs -



####################################################################################################



# install yay package manager
echo ""
echo ""
echo "installing yay"
sudo pacman -S yay --noconfirm;
echo "yay installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# # place_ssh_keys

# echo ""
# echo ""
# echo "placing ssh keys"

# # Set Download Directory
# DOWNLOAD_DIRECTORY=$HOME/Downloads

# # unzip file
# unzip $DOWNLOAD_DIRECTORY/ssh_keypair.zip -d $DOWNLOAD_DIRECTORY;
# sleep $SLEEP_TIME;

# # Set Target Directory
# TARGET_DIRECTORY=$HOME/.ssh/

# # Creating ~/.ssh/ directory
# if [ -d $TARGET_DIRECTORY ]; then
#     echo "~/.ssh/ directory already exists"
# else
#     echo "~/.ssh/ directory does not exists. creating one"
#     mkdir $TARGET_DIRECTORY;
# fi
# sleep $SLEEP_TIME;

# # move keypair to target directory
# mv $DOWNLOAD_DIRECTORY/ssh_keypair/* $TARGET_DIRECTORY;
# sleep $SLEEP_TIME;

# # Delete downloaded and extracted data
# rm -rf $DOWNLOAD_DIRECTORY/ssh_keypair*;
# echo "ssh keys placed"
# echo ""
# echo ""
# sleep $SLEEP_TIME;



####################################################################################################



# install_build_tools

# install gcc make
echo ""
echo ""
echo "installing build tools"
sudo pacman -S gcc make --noconfirm;
echo "build tools installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_tools

# install curl net-tools meld
echo ""
echo ""
echo "installing tools"
sudo pacman -S curl net-tools meld --noconfirm;
echo "tools installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_git
echo ""
echo ""
echo "installing git"
sudo pacman -S git --noconfirm;
echo "git installed"
echo ""
echo ""
sleep $SLEEP_TIME;

# configure_git
echo ""
echo ""
echo "configuring git"
git config --global user.name arorakash
git config --global user.email akash.arora73elearn@gmail.com
git config --global core.pager 'less -FRX'
echo "git configured"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_python3_pip

echo ""
echo ""
echo "installing python-pip"
sudo pacman -S python-pip --noconfirm;
echo "python-pip installed"
echo ""
echo ""
sleep $SLEEP_TIME;

echo ""
echo ""
echo "installing python-setuptools"
sudo pacman -S python-setuptools --noconfirm;
echo "python-setuptools installed"
echo ""
echo ""
sleep $SLEEP_TIME;

echo ""
echo ""
echo "installing python-wheel"
sudo pacman -S python-wheel --noconfirm;
echo "python-wheel installed"
echo ""
echo ""
sleep $SLEEP_TIME;


# python-dev not found
# python3-venv already installed



####################################################################################################



# install_python_packages
echo ""
echo ""
echo "installing tldr"
python3 -m pip install tldr
echo "tldr installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_chromium
echo ""
echo ""
echo "installing chromium"
sudo pacman -S chromium --noconfirm;
echo "chromium installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_chrome
echo ""
echo ""
echo "installing google chrome"
yay -S google-chrome --noconfirm;
echo "google chrome installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_sublime_text using snap
# install_sublime_text using yay
echo ""
echo ""
echo "installing sublime text 4"
yay -S sublime-text-4 --noconfirm;
echo "sublime text 4 installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_pycharm using snap
# install_pycharm using yay
echo ""
echo ""
echo "installing pycharm community"
yay -S pycharm-community-edition --noconfirm;
echo "pycharm community installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# change default shell to zsh
echo ""
echo ""
echo "changing default shell to zsh"
chsh -s $(which zsh);
echo "default shell changed to zsh"
echo ""
echo ""
sleep $SLEEP_TIME;

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



SLEEP_TIME=3;

# install_ohmyzsh
echo ""
echo ""
echo "installing ohmyzsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
echo "ohmyzsh installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# configure_aliases
echo ""
echo ""
echo "configuring ohmyzsh aliases"

# set target dir
TARGET_DIRECTORY=$HOME/.oh-my-zsh/custom/

# move aliases.zsh to target directory
cd ../
cp ./ohmyzsh/aliases.zsh $TARGET_DIRECTORY;
echo "ohmyzsh aliases configured"
echo ""
echo ""
sleep $SLEEP_TIME;

# restarting just in case
shutdown -r now;



####################################################################################################



SLEEP_TIME=3;

# install_nodejs
echo ""
echo ""
echo "installing nodejs"
sudo pacman -S nodejs npm --noconfirm;
sleep $SLEEP_TIME;

sudo npm i -g npm;
sleep $SLEEP_TIME;

sudo npm i -g n;
sleep $SLEEP_TIME;

sudo n lts;
echo "nodejs installed"
echo ""
echo ""
sleep $SLEEP_TIME;


# install_yarn
echo ""
echo ""
echo "installing yarn"
sudo pacman -S yarn --noconfirm;
echo "yarn installed"
echo ""
echo ""
sleep $SLEEP_TIME;

# install_nvm
echo ""
echo ""
echo "installing nvm"
sudo pacman -S nvm --noconfirm;
echo "nvm installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_pyenv
echo ""
echo ""
echo "installing pyenv"

# set clone dir
CLONE_DIRECTORY=$HOME/.pyenv/;

# cloning pyenv project
git clone https://github.com/pyenv/pyenv.git $CLONE_DIRECTORY;
echo "pyenv installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_pyenv_virtualenv_plugin
echo ""
echo ""
echo "installing pyenv virtualenv plugin"

# set clone dir
CLONE_DIRECTORY=$HOME/.pyenv/plugins/pyenv-virtualenv;

# cloning pyenv-virtualenv project
git clone https://github.com/pyenv/pyenv-virtualenv.git $CLONE_DIRECTORY;
echo "pyenv virtualenv plugin installed"
echo ""
echo ""
sleep $SLEEP_TIME;




####################################################################################################



# install_vscode using snap
# install_vscode using yay
echo ""
echo ""
echo "installing vscode"
yay -S vscode --noconfirm;
echo "vscode installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_postman using snap
# install_postman using yay
echo ""
echo ""
echo "installing postman"
yay -S postman --noconfirm;
echo "postman installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# add user to vboxsf group
echo ""
echo ""
echo "adding user to vboxsf group"
sudo gpasswd -a $USER vboxsf;
echo "user to vboxsf group added"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# set_gnome_behaviour
echo ""
echo ""
echo "setting gnome behaviour"
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews';
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']";
gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>z']";
echo "gnome behaviour set"
echo ""
echo ""
sleep $SLEEP_TIME;

# https://askubuntu.com/questions/1298574/troubleshoot-keyboard-shortcut-view-split-on-right

# gsettings list-recursively org.gnome.desktop.wm.keybindings
# gsettings list-recursively org.gnome.mutter.keybindings



####################################################################################################



# install_persepolis
echo ""
echo ""
echo "installing persepolis"
sudo pacman -S persepolis --noconfirm;
echo "persepolis installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_telegram
echo ""
echo ""
echo "installing telegram"
sudo pacman -S telegram-desktop --noconfirm;
echo "telegram installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_teams
echo ""
echo ""
echo "installing ms teams"
yay -S teams --noconfirm;
echo "ms teams installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_other_packages
echo ""
echo ""
echo "installing other packages"
sudo pacman -S ffmpeg tor variety vlc --noconfirm;
echo "other packages installed"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# # generic package management

# # Upgrade Packages
# echo ""
# echo ""
# echo "updating packages"
# sudo pacman -Syu --noconfirm;
# echo "packages updated"
# echo ""
# echo ""
# sleep $SLEEP_TIME;

# # Clean up all local caches.
# echo ""
# echo ""
# echo "cleaning local caches"
# sudo pacman -Sc;
# echo "local caches cleaned"
# echo ""
# echo ""
# sleep $SLEEP_TIME;

# # Remove dependencies that are no longer needed
# # sudo pacman -Qdtq | sudo pacman -Rs -



####################################################################################################
