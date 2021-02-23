# Download vmware player
# Set Download Directory
DOWNLOAD_DIRECTORY=$HOME/setups/virtualisation/vmware/player/

# Download vmware player bundle to Download Directory
echo ""
if ! [ -f $DOWNLOAD_DIRECTORY/VM*bundle ]; then
    echo "downloading vmware bundle"
    wget https://download3.vmware.com/software/player/file/VMware-Player-16.1.0-17198959.x86_64.bundle -P $DOWNLOAD_DIRECTORY
    echo "downloaded"
else
    echo "already downloaded vmware bundle"
fi
echo ""


# Download Google Chrome browser
# Set Download Directory
DOWNLOAD_DIRECTORY=$HOME/setups/browsers/chrome/

# Download chrome installer to Download Directory
echo ""
if ! [ -f $DOWNLOAD_DIRECTORY/google*.deb ]; then
    echo "downloading chrome installer"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P $DOWNLOAD_DIRECTORY
    echo "downloaded"
else
    echo "already downloaded chrome installer"
fi
echo ""


# Download Pycharm
# Download pycharm from https://www.jetbrains.com/pycharm/download/download-thanks.html?platform=linux&code=PCC

# Set Download Directory
DOWNLOAD_DIRECTORY=$HOME/setups/IDE/pycharm/

# Download Pycharm tar to Download Directory
echo ""
if ! [ -f $DOWNLOAD_DIRECTORY/pycharm*.tar.gz ]; then
    echo "downloading pycharm tar"
    wget https://download-cf.jetbrains.com/python/pycharm-community-2020.3.3.tar.gz -P $DOWNLOAD_DIRECTORY
    echo "downloaded"
else
    echo "already downloaded pycharm tar"
fi
echo ""


# Download Old firefox
# Set Download Directory
DOWNLOAD_DIRECTORY=$HOME/setups/browsers/firefox/52/

# Download firefox tar to Download Directory
echo ""
if ! [ -f $DOWNLOAD_DIRECTORY/firefox*.tar.bz2 ]; then
    echo "downloading firefox tar"
    wget https://ftp.mozilla.org/pub/firefox/releases/52.0/linux-x86_64/en-US/firefox-52.0.tar.bz2 -P $DOWNLOAD_DIRECTORY
    echo "downloaded"
else
    echo "already downloaded firefox tar"
fi
echo ""
