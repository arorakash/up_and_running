echo ""

# Download vscode
# Set Download Directory
DOWNLOAD_DIRECTORY=$HOME/Downloads/

# Download vscode installer to Download Directory
echo ""
if ! [ -f $DOWNLOAD_DIRECTORY/vscode*.deb ]; then
    echo "downloading vscode installer"
    wget 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -O $DOWNLOAD_DIRECTORY/vscode_amd64.deb
    echo "downloaded"
else
    echo "already downloaded vscode installer"
fi
echo ""

# install vmware player
echo "installing chrome"
sudo dpkg -i $DOWNLOAD_DIRECTORY/vscode*.deb
echo "installed"
echo ""
