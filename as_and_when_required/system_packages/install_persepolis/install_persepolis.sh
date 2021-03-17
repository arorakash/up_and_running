echo ""

# adding persepolis repository
echo "adding persepolis repository"
sudo add-apt-repository ppa:persepolis/ppa
echo "persepolis repository added"
echo ""

# updating sources
echo "updating sources"
sudo apt update;
echo ""

# installing persepolis
echo "installing persepolis"
sudo apt install persepolis -y;
echo "persepolis installed"
echo ""
