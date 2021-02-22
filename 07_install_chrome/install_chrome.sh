# Set Download Directory
DOWNLOAD_DIRECTORY=/home/`whoami`/setups/browsers/chrome/

# Download vmware player bundle to Download Directory
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P $DOWNLOAD_DIRECTORY

# install vmware player
sudo dpkg -i $DOWNLOAD_DIRECTORY/google*.deb

