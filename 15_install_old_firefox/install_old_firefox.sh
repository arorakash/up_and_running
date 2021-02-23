echo ""

# Remove previous installation
echo "removing previous installation and configuration"
sudo apt purge firefox -y
sudo rm -f /usr/bin/firefox
sudo rm -rf ~/.mozilla
sudo rm -rf /etc/firefox/
sudo rm -rf /usr/lib/firefox*
sudo rm -rf /opt/firefox/
echo "previous installation removed"

# Set Download Directory
DOWNLOAD_DIRECTORY=$HOME/setups/browsers/firefox/52/
echo "downloading tar at "$DOWNLOAD_DIRECTORY

# Download firefox tar to Download Directory
echo ""
if ! [ -f $DOWNLOAD_DIRECTORY/firefox*.tar.bz2 ]; then
    echo "downloading firefox tar"
    wget https://ftp.mozilla.org/pub/firefox/releases/52.0/linux-x86_64/en-US/firefox-52.0.tar.bz2 -P $DOWNLOAD_DIRECTORY
    echo "downloaded"
else
    echo "firefox tar already downloaded"
fi
echo ""

# extract to /opt
echo "sigh...unzips"
sudo tar -xjvf $DOWNLOAD_DIRECTORY/firefox*.tar.bz2 -C /opt/
echo "unzipped"
echo ""

# Create symlink in usr/bin
echo "creating symlink in /usr/bin"
sudo ln -s /opt/firefox/firefox /usr/bin/firefox
echo "link created"
echo ""
