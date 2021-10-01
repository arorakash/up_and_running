echo ""

# Adding user's private bin directories entry in .profile
echo "Adding entries in .profile for user's private bin directories"

echo '' >> ~/.profile;
echo "# set PATH so it includes user's private bin directories" >> ~/.profile;
echo 'export PATH=$PATH:$HOME/bin/:$HOME/.local/bin/' >> ~/.profile;
echo '' >> ~/.profile;

echo "entries added"
