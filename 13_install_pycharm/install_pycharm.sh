# Download pycharm from https://www.jetbrains.com/pycharm/download/download-thanks.html?platform=linux&code=PCC

# Set Download Directory
DOWNLOAD_DIRECTORY=$HOME/setups/IDE/pycharm/

# Download pycharm to Download Directory
wget https://download-cf.jetbrains.com/python/pycharm-community-2020.3.3.tar.gz -P $DOWNLOAD_DIRECTORY

# unzip to /opt
sudo tar -xzvf $DOWNLOAD_DIRECTORY/pycharm*.tar.gz -C /opt/

# move to pycharm directory
sudo mv /opt/pycharm* /opt/pycharm

# Add pycharm entry in .profile
sudo echo '' >> ~/.profile
sudo echo 'export PATH=$PATH:/opt/pycharm/bin/' >> ~/.profile
sudo echo '' >> ~/.profile

# Create symlink in usr/bin
sudo ln -s /opt/pycharm/bin/pycharm.sh /usr/bin/pycharm

