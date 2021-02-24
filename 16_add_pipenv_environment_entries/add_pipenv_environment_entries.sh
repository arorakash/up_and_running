echo ""

# Add pipenv environment variables for shells
echo "Add pipenv environment variables for shells"
echo ""

# Add pipenv environment variables for bash shell
echo "adding pipenv environment variables in ~/.bashrc"
echo '' >> ~/.bashrc;
echo 'export PIPENV_VENV_IN_PROJECT=1' >> ~/.bashrc;
echo '' >> ~/.bashrc;
echo "pipenv environment variables added in ~/.bashrc"
echo ""

# Add pipenv environment variables for zsh shell
echo "adding pipenv environment variables in ~/.zshrc"
echo '' >> ~/.zshrc;
echo 'export PIPENV_VENV_IN_PROJECT=1' >> ~/.zshrc;
echo '' >> ~/.zshrc;
echo "pipenv environment variables added in ~/.zshrc"
echo ""
