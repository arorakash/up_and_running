
####################################################################################################



SLEEP_TIME=1;



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
echo "downloading yay"
sudo pacman -Sw yay --noconfirm;
echo "yay downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# generate_ssh_keys

echo ""
echo ""
echo "downloading xclip"

# install xclip
sudo pacman -Sw xclip --noconfirm;
sleep $SLEEP_TIME;

echo "xclip downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_build_tools

# install gcc make
echo ""
echo ""
echo "downloading build tools"
sudo pacman -Sw gcc make --noconfirm;
echo "build tools downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_tools

# install curl net-tools meld
echo ""
echo ""
echo "downloading tools"
sudo pacman -Sw curl net-tools meld --noconfirm;
echo "tools downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_git
echo ""
echo ""
echo "downloading git"
sudo pacman -Sw git --noconfirm;
echo "git downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_python3_pip

echo ""
echo ""
echo "downloading python-pip"
sudo pacman -Sw python-pip --noconfirm;
echo "python-pip downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;

echo ""
echo ""
echo "downloading python-setuptools"
sudo pacman -Sw python-setuptools --noconfirm;
echo "python-setuptools downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;

echo ""
echo ""
echo "downloading python-wheel"
sudo pacman -Sw python-wheel --noconfirm;
echo "python-wheel downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;


# python-dev not found
# python3-venv already downloaded



####################################################################################################



# install_chromium
echo ""
echo ""
echo "downloading chromium"
sudo pacman -Sw chromium --noconfirm;
echo "chromium downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_chrome
echo ""
echo ""
echo "downloading google chrome"
# yay -Sw google-chrome --noconfirm;
echo "google chrome downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_sublime_text using snap
# install_sublime_text using yay
echo ""
echo ""
echo "downloading sublime text 4"
# yay -Sw sublime-text-4 --noconfirm;
echo "sublime text 4 downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_pycharm using snap
# install_pycharm using yay
echo ""
echo ""
echo "downloading pycharm community"
# yay -Sw pycharm-community-edition --noconfirm;
echo "pycharm community downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_nodejs
echo ""
echo ""
echo "downloading nodejs"
sudo pacman -Sw nodejs npm --noconfirm;
sleep $SLEEP_TIME;
echo "nodejs downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;


# install_yarn
echo ""
echo ""
echo "downloading yarn"
sudo pacman -Sw yarn --noconfirm;
echo "yarn downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;

# install_nvm
echo ""
echo ""
echo "downloading nvm"
sudo pacman -Sw nvm --noconfirm;
echo "nvm downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_vscode using snap
# install_vscode using yay
echo ""
echo ""
echo "downloading vscode"
# yay -Sw vscode --noconfirm;
echo "vscode downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_postman using snap
# install_postman using yay
echo ""
echo ""
echo "downloading postman"
# yay -Sw postman --noconfirm;
echo "postman downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_persepolis
echo ""
echo ""
echo "downloading persepolis"
sudo pacman -Sw persepolis --noconfirm;
echo "persepolis downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_telegram
echo ""
echo ""
echo "downloading telegram"
sudo pacman -Sw telegram-desktop --noconfirm;
echo "telegram downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_teams
echo ""
echo ""
echo "downloading ms teams"
# yay -Sw teams --noconfirm;
echo "ms teams downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# install_other_packages
echo ""
echo ""
echo "downloading other packages"
sudo pacman -Sw ffmpeg tor variety vlc --noconfirm;
echo "other packages downloaded"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################
