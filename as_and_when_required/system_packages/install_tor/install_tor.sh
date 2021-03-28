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


# https://askubuntu.com/questions/19320/how-to-enable-or-disable-services
# important commands to start, stop and auto-start tor service

# Starting with Ubuntu 15.04, Upstart will be deprecated in favor of Systemd. With Systemd to manage the services we can do the following (through the systemctl action SERVICE pattern):

# systemctl start SERVICE - Use it to start a service. Does not persist after reboot

# systemctl stop SERVICE - Use it to stop a service. Does not persist after reboot

# systemctl restart SERVICE - Use it to restart a service

# systemctl reload SERVICE - If the service supports it, it will reload the config files related to it without interrupting any process that is using the service.

# systemctl status SERVICE - Shows the status of a service. Tells whether a service is currently running.

# systemctl enable SERVICE - Turns the service on, on the next reboot or on the next start event. It persists after reboot.

# systemctl disable SERVICE - Turns the service off on the next reboot or on the next stop event. It persists after reboot.

# systemctl is-enabled SERVICE - Check if a service is currently configured to start or not on the next reboot.

# systemctl is-active SERVICE - Check if a service is currently active.

# systemctl show SERVICE - Show all the information about the service.

# sudo systemctl mask SERVICE - Completely disable a service by linking it to /dev/null; you cannot start the service manually or enable the service.

# sudo systemctl unmask SERVICE - Removes the link to /dev/null and restores the ability to enable and or manually start the service
