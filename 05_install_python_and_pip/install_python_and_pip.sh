echo ""

# install python
# python3 already comes shipped with ubuntu

# install pip
echo "installing python3-pip"
sudo apt install python3-pip -y
echo "python3-pip installed"
echo ""

# install python-dev
echo "installing python3-dev"
sudo apt install python3-dev -y
echo "python3-dev installed"
echo ""

# install python3-venv
echo "installing python3-venv"
sudo apt install python3-venv -y
echo "python3-venv installed"

# upgrade system pip setuptools and wheel
echo "upgrading system pip setuptools and wheel"
sudo python3 -m pip install --upgrade setuptools
sudo python3 -m pip install --upgrade wheel
sudo python3 -m pip install --upgrade pip
echo "system pip setuptools and wheel upgraded"
echo ""
