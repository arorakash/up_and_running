echo ""
# Set Download Directory
DOWNLOAD_DIRECTORY=$HOME/setups/virtualisation/vmware/player
echo "downloading bundle at "$DOWNLOAD_DIRECTORY

# Download vmware player bundle to Download Directory
echo ""
if ! [ -f $DOWNLOAD_DIRECTORY/VM*bundle ]; then
    echo "downloading vmware bundle"
    wget https://download3.vmware.com/software/player/file/VMware-Player-16.1.0-17198959.x86_64.bundle -P $DOWNLOAD_DIRECTORY
    echo "downloaded"
else
    echo "vmware bundle already downloaded"
fi
echo ""

# Make the bundle executable
echo "making bundle executable"
chmod a+x $DOWNLOAD_DIRECTORY/VM*.bundle
echo "bundle is now executable"
echo ""

# install vmware player
echo "installing bundle"
sudo $DOWNLOAD_DIRECTORY/VM*.bundle
echo "installed"
echo ""
