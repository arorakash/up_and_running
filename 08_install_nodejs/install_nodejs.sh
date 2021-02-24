echo ""

# download install script and run it with bash
echo "reading nodejs setup script from nodesource and passing it to bash"
wget -qO- https://deb.nodesource.com/setup_lts.x | sudo -E bash -
echo "setup script executed"
echo ""

# install nodejs
echo "installing nodejs"
sudo apt install nodejs -y;
echo "nodejs installed"
echo ""

# adding yarn package manager gpg apt keys and sources
echo "adding yarn gpg apt keys and sources"
wget -qO- https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
echo "gpg apt keys and sources added"
echo ""

# updating sources
echo "updating sources"
sudo apt update;
echo ""

# installing yarn
echo "installing yarn"
sudo apt install yarn -y;
echo "yarn installed"
echo ""
