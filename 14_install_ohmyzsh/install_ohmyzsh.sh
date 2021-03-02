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


# copying custom zsh aliases to ~/.ohmyzsh/custom/

# Set Target Directory
TARGET_DIRECTORY=$HOME/.oh-my-zsh/custom/

# move aliases.zsh to target directory
cp aliases.zsh $TARGET_DIRECTORY;
echo "moved custom aliases to "$TARGET_DIRECTORY
echo ""


# download commover alias notification sound file

# Set Target Directory
DOWNLOAD_DIRECTORY=$HOME/Music/sounds/notification/

# Creating Download directory
if [ -d $DOWNLOAD_DIRECTORY ]; then
    echo $HOME"/Music/sounds/notification/ directory already exists"
else
    echo $HOME"/Music/sounds/notification/ directory does not exists. creating one"
    mkdir -p $DOWNLOAD_DIRECTORY;
fi
echo ""

# Download sound file to Download Directory
echo ""
if ! [ -f $DOWNLOAD_DIRECTORY/*just-saying*.mp3 ]; then
    echo "downloading sound file"
    wget --user-agent=Mozilla --content-disposition --max-redirect=20 -E -c https://proxy.notificationsounds.com/featured-sounds/just-saying-593/download/file-sounds-1140-just-saying.mp3 -P $DOWNLOAD_DIRECTORY
    echo "downloaded"
else
    echo "sound file already downloaded"
fi
echo ""
