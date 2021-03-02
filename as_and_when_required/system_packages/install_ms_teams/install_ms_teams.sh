echo ""

# Set Download Directory
DOWNLOAD_DIRECTORY=$HOME/setups/chat_apps/ms_teams
echo "downloading installer at "$DOWNLOAD_DIRECTORY

# Download teams deb to Download Directory
echo ""
if ! [ -f $DOWNLOAD_DIRECTORY/teams*.deb ]; then
    echo "downloading teams deb"
    wget --user-agent=Mozilla --content-disposition --max-redirect=20 -E -c 'https://go.microsoft.com/fwlink/p/?LinkID=2112886&culture=en-in&country=IN' -P $DOWNLOAD_DIRECTORY
    echo "downloaded"
else
    echo "teams deb already downloaded"
fi
echo ""

# install teams
echo "installing teams"
sudo dpkg -i $DOWNLOAD_DIRECTORY/teams*.deb
echo "installed"
echo ""
