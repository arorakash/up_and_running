echo ""

# restart snap service
echo "restarting snap service"
sudo service snapd restart;
echo "snap service restarted"
echo ""

# install chromium
echo "installing chromium"
sudo apt install chromium-browser -y
echo "installed"
echo ""
