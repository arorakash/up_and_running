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

# Creating ~/.ssh/ directory
if [ -d $TARGET_DIRECTORY ]; then
    echo "~/.ssh/ directory already exists"
else
    echo "~/.ssh/ directory does not exists. creating one"
    mkdir $TARGET_DIRECTORY;
fi
echo ""

# move keypair to target directory
mv $DOWNLOAD_DIRECTORY/ssh_keypair/* $TARGET_DIRECTORY;
echo "moved keypair to "$TARGET_DIRECTORY

# Delete downloaded and extracted data
rm -rf $DOWNLOAD_DIRECTORY/ssh_keypair*;
