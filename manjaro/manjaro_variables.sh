
####################################################################################################



SLEEP_TIME=3;



####################################################################################################



# generate_ssh_keys

echo ""
echo ""
echo "generating ssh keys"

# install xclip
sudo pacman -S xclip --noconfirm;
sleep $SLEEP_TIME;

# generate ssh keypair
ssh-keygen -t rsa -b 4096 -C "akash.arora73elearn@gmail.com"
sleep $SLEEP_TIME;

# start ssh agent
eval "$(ssh-agent -s)";
sleep $SLEEP_TIME;

# add private key to ssh agent
ssh-add ~/.ssh/id_rsa;
sleep $SLEEP_TIME;

# export public ssh key
cat ~/.ssh/id_rsa.pub >> $HOME/public_ssh_key.txt
echo "ssh keys generated"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# add_nvm_entries
echo ""
echo ""
echo "adding nvm entries to bashrc"
echo '' >> ~/.bashrc;
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
echo '' >> ~/.bashrc;
echo "nvm entries to bashrc added"
echo ""
echo ""
sleep $SLEEP_TIME;

echo ""
echo ""
echo "adding nvm entries to zshrc"
echo '' >> ~/.zshrc;
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.zshrc
echo '' >> ~/.zshrc;
echo "nvm entries to zshrc added"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# add_pyenv_environment_entries_in_shells_rc

# add in bashrc
echo ""
echo ""
echo "adding pyenv entries to bashrc"
echo '' >> ~/.bashrc;
echo 'export PYENV_ROOT=$HOME/.pyenv;' >> ~/.bashrc;
echo 'export PATH=$PYENV_ROOT/bin:$PATH;' >> ~/.bashrc;
echo 'eval "$(pyenv init --path)";' >> ~/.bashrc;
echo 'eval "$(pyenv init -)";' >> ~/.bashrc;
echo '' >> ~/.bashrc;
echo "pyenv entries to bashrc added"
echo ""
echo ""
sleep $SLEEP_TIME;

# add in zshrc
echo ""
echo ""
echo "adding pyenv entries to zshrc"
echo '' >> ~/.zshrc;
echo 'export PYENV_ROOT=$HOME/.pyenv;' >> ~/.zshrc;
echo 'export PATH=$PYENV_ROOT/bin:$PATH;' >> ~/.zshrc;
echo 'eval "$(pyenv init --path)";' >> ~/.zshrc;
echo 'eval "$(pyenv init -)";' >> ~/.zshrc;
echo '' >> ~/.zshrc;
echo "pyenv entries to zshrc added"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# add_pyenv_virtualenv_environment_entries_in_shells_rc

# add in bashrc
echo ""
echo ""
echo "adding pyenv virtualenv entries in bashrc"
echo '' >> ~/.bashrc;
echo 'eval "$(pyenv virtualenv-init -)";' >> ~/.bashrc;
echo '' >> ~/.bashrc;
echo "pyenv virtualenv entries in bashrc added"
echo ""
echo ""
sleep $SLEEP_TIME;

# add in zshrc
echo ""
echo ""
echo "adding pyenv virtualenv entries in zshrc"
echo '' >> ~/.zshrc;
echo 'eval "$(pyenv virtualenv-init -)";' >> ~/.zshrc;
echo '' >> ~/.zshrc;
echo "pyenv virtualenv entries in zshrc added"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################



# add_pipenv_environment_entries_in_shells_rc

# add in bashrc
echo ""
echo ""
echo "adding pipenv entries in bashrc"
echo '' >> ~/.bashrc;
echo 'export PIPENV_VENV_IN_PROJECT=1' >> ~/.bashrc;
echo '' >> ~/.bashrc;
echo "pipenv entries in bashrc added"
echo ""
echo ""
sleep $SLEEP_TIME;

# add in zshrc
echo ""
echo ""
echo "adding pipenv entries in zshrc"
echo '' >> ~/.zshrc;
echo 'export PIPENV_VENV_IN_PROJECT=1' >> ~/.zshrc;
echo '' >> ~/.zshrc;
echo "pipenv entries in zshrc added"
echo ""
echo ""
sleep $SLEEP_TIME;



####################################################################################################
