echo ""

# install git
echo "installing git"
sudo apt install git -y
echo "installed"
echo ""

# configure git user
echo "adding global configuration"
git config --global user.name arorakash
git config --global user.email akash.arora73elearn@gmail.com
git config --global core.pager 'less -FRX'
echo "global configuration added"
echo ""

# show global git config
echo "git global config looks like this"
echo ""
cat ~/.gitconfig
echo ""
echo ""

echo "clone git repo using ssh as follows"
echo "git clone git@github.com:arorakash/up_and_running.git"
echo ""

echo "clone git repo using https as follows"
echo "wget https://www.github.com/arorakash/up_and_running/archive/master.zip"
echo ""
