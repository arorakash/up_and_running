echo ""
# Set Download Directory
DOWNLOAD_DIRECTORY=/home/`whoami`/setups/browsers/chrome/
echo "downloading installer at "$DOWNLOAD_DIRECTORY

# Download vmware player bundle to Download Directory
echo ""
if ! [ -f $DOWNLOAD_DIRECTORY/google*.deb ]; then
    echo "downloading chrome installer"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P $DOWNLOAD_DIRECTORY
    echo "downloaded"
else
    echo "chrome installer already downloaded"
fi
echo ""

# install vmware player
echo "installing chrome"
sudo dpkg -i $DOWNLOAD_DIRECTORY/google*.deb
echo "installed"
echo ""
