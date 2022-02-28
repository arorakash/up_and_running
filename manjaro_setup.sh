
####################################################################################################


SLEEP_TIME=3;


####################################################################################################



# generic package management

# Upgrade Packages
echo "\n"
echo "updating packages"
sudo pacman -Syu;
echo "packages updated"
echo "\n"
sleep $SLEEP_TIME;

# Clean up all local caches.
echo "\n"
echo "cleaning local caches"
sudo pacman -Sc --noconfirm;
echo "local caches cleaned"
echo "\n"
sleep $SLEEP_TIME;

# Remove dependencies that are no longer needed
# sudo pacman -Qdtq | sudo pacman -Rs -



####################################################################################################



# install yay package manager
echo "\n"
echo "installing yay"
sudo pacman -S yay --noconfirm;
echo "yay installed"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# place_ssh_keys

echo "\n"
echo "placing ssh keys"

# Set Download Directory
DOWNLOAD_DIRECTORY=$HOME/Downloads

# unzip file
unzip $DOWNLOAD_DIRECTORY/ssh_keypair.zip -d $DOWNLOAD_DIRECTORY;
sleep $SLEEP_TIME;

# Set Target Directory
TARGET_DIRECTORY=$HOME/.ssh/

# Creating ~/.ssh/ directory
if [ -d $TARGET_DIRECTORY ]; then
    echo "~/.ssh/ directory already exists"
else
    echo "~/.ssh/ directory does not exists. creating one"
    mkdir $TARGET_DIRECTORY;
fi
sleep $SLEEP_TIME;

# move keypair to target directory
mv $DOWNLOAD_DIRECTORY/ssh_keypair/* $TARGET_DIRECTORY;
sleep $SLEEP_TIME;

# Delete downloaded and extracted data
rm -rf $DOWNLOAD_DIRECTORY/ssh_keypair*;
echo "ssh keys placed"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# generate_ssh_keys

echo "\n"
echo "generating ssh keys"

# install xclip
sudo pacman -S xclip --noconfirm;
sleep $SLEEP_TIME;

# generate ssh keypair
ssh-keygen -t rsa -b 4096 -C "akash.arora73elearn@gmail.com"
sleep $SLEEP_TIME;

# start ssh agent
eval "$(ssh-agent -s)";
sleep $SLEEP_TIME;

# add private key to ssh agent
ssh-add ~/.ssh/id_rsa;
sleep $SLEEP_TIME;

# export public ssh key
cat ~/.ssh/id_rsa.pub >> $HOME/public_ssh_key.txt
echo "ssh keys generated"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# install_build_tools

# install gcc make
echo "\n"
echo "installing build tools"
sudo pacman -S gcc make --noconfirm;
echo "build tools installed"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# install_tools

# install curl net-tools meld
echo "\n"
echo "installing tools"
sudo pacman -S curl net-tools meld --noconfirm;
echo "tools installed"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# install_git
echo "\n"
echo "installing git"
sudo pacman -S git --noconfirm;
echo "git installed"
echo "\n"
sleep $SLEEP_TIME;

# configure_git
echo "\n"
echo "configuring git"
git config --global user.name arorakash
git config --global user.email akash.arora73elearn@gmail.com
git config --global core.pager 'less -FRX'
echo "git configured"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# install_python3_pip

echo "\n"
echo "installing python-pip"
sudo pacman -S python-pip --noconfirm;
echo "python-pip installed"
echo "\n"
sleep $SLEEP_TIME;

echo "\n"
echo "installing python-setuptools"
sudo pacman -S python-setuptools --noconfirm;
echo "python-setuptools installed"
echo "\n"
sleep $SLEEP_TIME;

echo "\n"
echo "installing python-wheel"
sudo pacman -S python-wheel --noconfirm;
echo "python-wheel installed"
echo "\n"
sleep $SLEEP_TIME;


# python-dev not found
# python3-venv already installed



####################################################################################################



# install_python_packages
echo "\n"
echo "installing tldr"
python3 -m pip install tldr
echo "tldr installed"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# install_chromium
echo "\n"
echo "installing chromium"
sudo pacman -S chromium --noconfirm;
echo "chromium installed"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# install_chrome
echo "\n"
echo "installing google chrome"
yay -S google-chrome;
echo "google chrome installed"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# install_sublime_text using snap
# install_sublime_text using yay
echo "\n"
echo "installing sublime text 4"
yay -S sublime-text-4;
echo "sublime text 4 installed"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# install_pycharm using snap
# install_pycharm using yay
echo "\n"
echo "installing pycharm community"
yay -S pycharm-community-edition;
echo "pycharm community installed"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# change default shell to zsh
echo "\n"
echo "changing default shell to zsh"
chsh -s $(which zsh);
echo "default shell changed to zsh"
echo "\n"
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



# install_ohmyzsh
echo "\n"
echo "installing ohmyzsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
echo "ohmyzsh installed"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# configure_aliases
echo "\n"
echo "configuring ohmyzsh aliases"

# set target dir
TARGET_DIRECTORY=$HOME/.oh-my-zsh/custom/

# move aliases.zsh to target directory
cp $PWD/ohmyzsh/aliases.zsh $TARGET_DIRECTORY;
echo "ohmyzsh aliases configured"
echo "\n"
sleep $SLEEP_TIME;

# restarting just in case
shutdown -r now;



####################################################################################################



# install_nodejs
echo "\n"
echo "installing nodejs"
sudo pacman -S nodejs npm --noconfirm;
sleep $SLEEP_TIME;

sudo npm i -g npm;
sleep $SLEEP_TIME;

sudo npm i -g n;
sleep $SLEEP_TIME;

sudo n lts;
echo "nodejs installed"
echo "\n"
sleep $SLEEP_TIME;


# install_yarn
echo "\n"
echo "installing yarn"
sudo pacman -S yarn --noconfirm;
echo "yarn installed"
echo "\n"
sleep $SLEEP_TIME;

# install_nvm
echo "\n"
echo "installing nvm"
sudo pacman -S nvm --noconfirm;
echo "nvm installed"
echo "\n"
sleep $SLEEP_TIME;

# add_nvm_entries
echo "\n"
echo "adding nvm entries to bashrc"
echo '' >> ~/.bashrc;
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
echo '' >> ~/.bashrc;
echo "nvm entries to bashrc added"
echo "\n"
sleep $SLEEP_TIME;

echo "\n"
echo "adding nvm entries to zshrc"
echo '' >> ~/.zshrc;
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.zshrc
echo '' >> ~/.zshrc;
echo "nvm entries to zshrc added"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# install_pyenv
echo "\n"
echo "installing pyenv"

# set clone dir
CLONE_DIRECTORY=$HOME/.pyenv/;

# cloning pyenv project
git clone https://github.com/pyenv/pyenv.git $CLONE_DIRECTORY;
echo "pyenv installed"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# add_pyenv_environment_entries_in_shells_rc

# add in bashrc
echo "\n"
echo "adding pyenv entries to bashrc"
echo '' >> ~/.bashrc;
echo 'export PYENV_ROOT=$HOME/.pyenv;' >> ~/.bashrc;
echo 'export PATH=$PYENV_ROOT/bin:$PATH;' >> ~/.bashrc;
echo 'eval "$(pyenv init --path)";' >> ~/.bashrc;
echo 'eval "$(pyenv init -)";' >> ~/.bashrc;
echo '' >> ~/.bashrc;
echo "pyenv entries to bashrc added"
echo "\n"
sleep $SLEEP_TIME;

# add in zshrc
echo "\n"
echo "adding pyenv entries to zshrc"
echo '' >> ~/.zshrc;
echo 'export PYENV_ROOT=$HOME/.pyenv;' >> ~/.zshrc;
echo 'export PATH=$PYENV_ROOT/bin:$PATH;' >> ~/.zshrc;
echo 'eval "$(pyenv init --path)";' >> ~/.zshrc;
echo 'eval "$(pyenv init -)";' >> ~/.zshrc;
echo '' >> ~/.zshrc;
echo "pyenv entries to zshrc added"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# install_pyenv_virtualenv_plugin
echo "\n"
echo "installing pyenv virtualenv plugin"

# set clone dir
CLONE_DIRECTORY=$HOME/.pyenv/plugins/pyenv-virtualenv;

# cloning pyenv-virtualenv project
git clone https://github.com/pyenv/pyenv-virtualenv.git $CLONE_DIRECTORY;
echo "pyenv virtualenv plugin installed"
echo "\n"
sleep $SLEEP_TIME;




####################################################################################################



# add_pyenv_virtualenv_environment_entries_in_shells_rc

# add in bashrc
echo "\n"
echo "adding pyenv virtualenv entries in bashrc"
echo '' >> ~/.bashrc;
echo 'eval "$(pyenv virtualenv-init -)";' >> ~/.bashrc;
echo '' >> ~/.bashrc;
echo "pyenv virtualenv entries in bashrc added"
echo "\n"
sleep $SLEEP_TIME;

# add in zshrc
echo "\n"
echo "adding pyenv virtualenv entries in zshrc"
echo '' >> ~/.zshrc;
echo 'eval "$(pyenv virtualenv-init -)";' >> ~/.zshrc;
echo '' >> ~/.zshrc;
echo "pyenv virtualenv entries in zshrc added"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# add_pipenv_environment_entries_in_shells_rc

# add in bashrc
echo "\n"
echo "adding pipenv entries in bashrc"
echo '' >> ~/.bashrc;
echo 'export PIPENV_VENV_IN_PROJECT=1' >> ~/.bashrc;
echo '' >> ~/.bashrc;
echo "pipenv entries in bashrc added"
echo "\n"
sleep $SLEEP_TIME;

# add in zshrc
echo "\n"
echo "adding pipenv entries in zshrc"
echo '' >> ~/.zshrc;
echo 'export PIPENV_VENV_IN_PROJECT=1' >> ~/.zshrc;
echo '' >> ~/.zshrc;
echo "pipenv entries in zshrc added"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# install_vscode using snap
# install_vscode using yay
echo "\n"
echo "installing vscode"
yay -S vscode;
echo "vscode installed"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# install_postman using snap
# install_postman using yay
echo "\n"
echo "installing postman"
yay -S postman;
echo "postman installed"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# add user to vboxsf group
echo "\n"
echo "adding user to vboxsf group"
sudo gpasswd -a $USER vboxsf;
echo "user to vboxsf group added"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################



# set_gnome_behaviour
echo "\n"
echo "setting gnome behaviour"
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews';
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']";
gsettings get org.gnome.desktop.wm.keybindings minimize "['<Super>z']";
echo "gnome behaviour set"
echo "\n"
sleep $SLEEP_TIME;

# https://askubuntu.com/questions/1298574/troubleshoot-keyboard-shortcut-view-split-on-right

# gsettings list-recursively org.gnome.desktop.wm.keybindings
# gsettings list-recursively org.gnome.mutter.keybindings



####################################################################################################



# install_persepolis
echo "\n"
echo "installing persepolis"
sudo pacman -S persepolis --noconfirm;
echo "persepolis installed"
echo "\n"
sleep $SLEEP_TIME;



####################################################################################################




# install_telegram
echo "\n"
echo "installing telegram"
sudo pacman -S telegram-desktop --noconfirm;
echo "telegram installed"
echo "\n"
sleep $SLEEP_TIME;




####################################################################################################




# install_teams
echo "\n"
echo "installing ms teams"
yay -S teams;
echo "ms teams installed"
echo "\n"
sleep $SLEEP_TIME;




####################################################################################################




# install_other_packages
echo "\n"
echo "installing other packages"
sudo pacman -S ffmpeg tor variety vlc --noconfirm;
echo "other packages installed"
echo "\n"
sleep $SLEEP_TIME;




####################################################################################################



# generic package management

# Upgrade Packages
echo "\n"
echo "updating packages"
sudo pacman -Syu;
echo "packages updated"
echo "\n"
sleep $SLEEP_TIME;

# Clean up all local caches. 
echo "\n"
echo "cleaning local caches"
sudo pacman -Sc;
echo "local caches cleaned"
echo "\n"
sleep $SLEEP_TIME;

# Remove dependencies that are no longer needed
# sudo pacman -Qdtq | sudo pacman -Rs -



####################################################################################################
