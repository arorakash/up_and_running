
# https://linuxconfig.org/manjaro-linux-kernel-headers-installation

# check current kernal version
uname -r
mhwd-kernel -li


# Since our test machine is running kernel 5.6.x, we’ll choose option 6, which installs the linux56-headers package.
# install kernal headers
sudo pacman -S linux-headers


# check kernel header version
pacman -Q | grep headers


# restart
shutdown -r now


# install vbox guest additions
sudo ./VBoxLinuxAdditions.run
