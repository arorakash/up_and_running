echo ""

# Set Download Directory
DOWNLOAD_DIRECTORY=$HOME/setups/chat_apps/telegram
echo "downloading installer at "$DOWNLOAD_DIRECTORY

# Download telegram tar to Download Directory
echo ""
if ! [ -f $DOWNLOAD_DIRECTORY/tsetup*.tar.xz ]; then
    echo "downloading telegram tar"
    wget --user-agent=Mozilla --content-disposition --max-redirect=20 -E -c https://telegram.org/dl/desktop/linux -P $DOWNLOAD_DIRECTORY
    echo "downloaded"
else
    echo "telegram tar already downloaded"
fi
echo ""

# unzip to Download Directory
echo "sigh...unzips"
tar -xvf $DOWNLOAD_DIRECTORY/tsetup*.tar.xz -C $DOWNLOAD_DIRECTORY
echo "unzipped"
echo ""

# install telegram
echo "installing telegram"
$DOWNLOAD_DIRECTORY/Telegram/Telegram
echo "installed"
echo ""

# update telegram
# echo "updating telegram"
# $DOWNLOAD_DIRECTORY/Telegram/Updater
# echo "updated"
# echo ""
