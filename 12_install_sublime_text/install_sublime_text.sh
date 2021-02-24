echo ""

# adding sublime text gpg keys and sources
echo "adding sublime text gpg apt keys and sources"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list;
echo "gpg apt keys and sources added"
echo ""


# updating sources
echo "updating sources"
sudo apt update;
echo ""

# installing sublime text
echo "installing sublime text"
sudo apt install sublime-text -y;
echo "sublime text installed"
echo ""
