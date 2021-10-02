echo ""
# Download pycharm from https://www.jetbrains.com/pycharm/download/download-thanks.html?platform=linux&code=PCC

# Set Download Directory
DOWNLOAD_DIRECTORY=$HOME/setups/IDE/pycharm/
echo "downloading tar at "$DOWNLOAD_DIRECTORY

# Download pycharm to Download Directory
echo ""
if ! [ -f $DOWNLOAD_DIRECTORY/pycharm*.tar.gz ]; then
    echo "downloading pycharm tar"
    wget https://download-cf.jetbrains.com/python/pycharm-community-2020.3.3.tar.gz -P $DOWNLOAD_DIRECTORY
    echo "downloaded"
else
    echo "pycharm tar already downloaded"
fi
echo ""

# unzip to /opt
echo "sigh...unzips"
sudo tar -xzvf $DOWNLOAD_DIRECTORY/pycharm*.tar.gz -C /opt/
echo "unzipped"
echo ""

# move to pycharm directory
echo "renaming directory to pycharm"
sudo mv /opt/pycharm* /opt/pycharm
echo "renamed"
echo ""

# Create symlink in /usr/bin
echo "creating symlink in /usr/bin"
sudo ln -s /opt/pycharm/bin/pycharm.sh /usr/bin/pycharm
echo "link created"
echo ""
