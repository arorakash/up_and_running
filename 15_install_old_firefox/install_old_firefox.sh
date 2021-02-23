# Remove previous installation
sudo apt purge firefox -y
sudo rm -f /usr/bin/firefox
sudo rm -rf ~/.mozilla
sudo rm -rf /etc/firefox/
sudo rm -rf /usr/lib/firefox*
sudo rm -rf /opt/firefox/

# Set Download Directory
DOWNLOAD_DIRECTORY=$HOME/setups/browsers/firefox/52/

# Download firefox tar to Download Directory
wget https://ftp.mozilla.org/pub/firefox/releases/52.0/linux-x86_64/en-US/firefox-52.0.tar.bz2 -P $DOWNLOAD_DIRECTORY

# extract to /opt
sudo tar -xjvf $DOWNLOAD_DIRECTORY/firefox*.tar.bz2 -C /opt/

# Create symlink in usr/bin
sudo ln -s /opt/firefox/firefox /usr/bin/firefox
