echo ""

# install pyenv
echo "installing pyenv"
echo ""

# install dependencies
echo "updating sources"
sudo apt update;
echo "sources updated"
echo "installing dependencies"
sudo apt install --no-install-recommends -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev;
echo "dependencies installed"
echo ""

# Set Clone Directory
echo "setting clone directory"
CLONE_DIRECTORY=$HOME/.pyenv/;
echo "clone directory is "$CLONE_DIRECTORY
echo ""

# cloning pyenv project
echo "cloning pyenv project"
git clone https://github.com/pyenv/pyenv.git $CLONE_DIRECTORY;
echo "pyenv project cloned"
echo ""

# Add environment variables for shells
echo "Add environment variables for shells"
echo ""

# Add environment variables for bash shell
echo "adding environment variables in ~/.bashrc"
echo '' >> ~/.bashrc;
echo 'export PYENV_ROOT=$HOME/.pyenv' >> ~/.bashrc;
echo 'export PATH=$PYENV_ROOT/bin:$PATH' >> ~/.bashrc;
echo '' >> ~/.bashrc;
echo "environment variables added in ~/.bashrc"
echo ""

# Add environment variables for zsh shell
echo "adding environment variables in ~/.zshrc"
echo '' >> ~/.zshrc;
echo 'export PYENV_ROOT=$HOME/.pyenv' >> ~/.zshrc;
echo 'export PATH=$PYENV_ROOT/bin:$PATH' >> ~/.zshrc;
echo '' >> ~/.zshrc;
echo "environment variables added in ~/.zshrc"
echo ""

echo "pyenv installed"
echo ""


# install pyenv-virtualenv plugin
echo "installing pyenv-virtualenv plugin"
echo ""

# Set Clone Directory
echo "setting clone directory"
CLONE_DIRECTORY=$HOME/.pyenv/plugins/pyenv-virtualenv;
echo "clone directory is "$CLONE_DIRECTORY
echo ""

# cloning pyenv-virtualenv project
echo "cloning pyenv-virtualenv project"
git clone https://github.com/pyenv/pyenv-virtualenv.git $CLONE_DIRECTORY;
echo "pyenv-virtualenv project cloned"
echo ""

# Add shell entries for auto-completion and auto-activation of virtualenvs
echo "adding shell entries for auto-completion and auto-activation of virtualenvs"
echo ""

# Add entries in bash shell
echo "adding entries in ~/.bashrc"
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\n  eval "$(pyenv virtualenv-init -)"\nfi' >> ~/.bashrc
echo '' >> ~/.bashrc;
echo "entries added in ~/.bashrc"
echo ""

# Add entries in zsh shell
echo "adding entries in ~/.zshrc"
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\n  eval "$(pyenv virtualenv-init -)"\nfi' >> ~/.zshrc
echo '' >> ~/.zshrc;
echo "entries added in ~/.zshrc"
echo ""

echo "pyenv-virtualenv installed"
echo ""
