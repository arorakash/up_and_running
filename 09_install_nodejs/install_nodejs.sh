# download install script and run it with bash
wget -qO- https://deb.nodesource.com/setup_lts.x | sudo -E bash -

# install nodejs
sudo apt install nodejs -y

# install yarn package manager
wget -qO- https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn

