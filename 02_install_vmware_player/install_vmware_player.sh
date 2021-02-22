# Set Download Directory
DOWNLOAD_DIRECTORY=/home/`whoami`/setups/virtualisation/vmware/player/

# Download vmware player bundle to Download Directory
wget https://download3.vmware.com/software/player/file/VMware-Player-16.1.0-17198959.x86_64.bundle -P $DOWNLOAD_DIRECTORY

# Make the bundle executable
chmod a+x $DOWNLOAD_DIRECTORY/VM*.bundle

# install vmware player
sudo $DOWNLOAD_DIRECTORY/VM*.bundle

