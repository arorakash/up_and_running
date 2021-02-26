echo ""

# Set Download Directory
DOWNLOAD_DIRECTORY=$HOME/Downloads
echo "ssh_keypair.zip should be present at "$DOWNLOAD_DIRECTORY/

# unzip file
echo "sigh...unzips"
unzip $DOWNLOAD_DIRECTORY/ssh_keypair.zip -d $DOWNLOAD_DIRECTORY;
echo "unzipped"
echo ""

# Set Target Directory
TARGET_DIRECTORY=$HOME/.ssh/

# move keypair to target directory
mv $DOWNLOAD_DIRECTORY/ssh_keypair/* $TARGET_DIRECTORY;
echo "moved keypair to ~/.ssh/"

# Delete downloaded and extracted data
rm -rf $DOWNLOAD_DIRECTORY/ssh_keypair*;
