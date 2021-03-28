echo ""

# install tor
echo "installing tor"
sudo apt install tor -y;
echo "tor installed"
echo ""

# restart tor service
echo "restarting tor"
sudo /etc/init.d/tor restart
echo "tor restarted"
echo ""

# Configure tor
# Do this 2-3 times and keep the latest result
# tor --hash-password <password>

# Edit the torrc file as follows:
# 1. subl /etc/tor/torrc
# 2. uncomment line ControlPort 9051
# 3. Updated hashed password with latest result
# 4. uncomment line CookieAuthentication 1

# restart tor service
# sudo /etc/init.d/tor restart


# In python project, install the torrequest library
# 1. pip install torrequest
# 2. Check the working of tor service and library using sample python code
