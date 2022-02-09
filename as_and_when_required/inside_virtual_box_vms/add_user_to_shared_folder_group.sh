echo ""

# add user to shared folder group
sudo adduser $USER vboxsf;
echo $USER" added to vboxsf group"
echo ""

# check ownership of shared folder using ls -lah /media/<sf>

# https://stackoverflow.com/questions/26740113/virtualbox-shared-folder-permissions/65011188#65011188
# change group ownership of shared folder to vboxsf if not already
# sudo chgrp vboxsf /media/<sf>
