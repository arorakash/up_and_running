# install pyenv

# install dependencies
sudo apt-get update;
sudo apt-get install --no-install-recommends -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev;

# Set Clone Directory
CLONE_DIRECTORY=$HOME/.pyenv/;
git clone https://github.com/pyenv/pyenv.git $CLONE_DIRECTORY;

# Set environment variables in bash
echo '' >> ~/.bashrc;
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc;
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc;
echo '' >> ~/.bashrc;

# Set environment variables in zsh
echo '' >> ~/.zshrc;
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc;
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc;
echo '' >> ~/.zshrc;


# install pyenv-virtualenv

# Set Clone Directory
CLONE_DIRECTORY=$HOME/.pyenv/plugins/pyenv-virtualenv;
git clone https://github.com/pyenv/pyenv-virtualenv.git $CLONE_DIRECTORY;

# Add entries to enable auto-completion and auto-activation of virtualenvs

# Add entries in bash shell
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\n  eval "$(pyenv virtualenv-init -)"\nfi' >> ~/.bashrc
echo '' >> ~/.bashrc;

# Add entries in zsh shell
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\n  eval "$(pyenv virtualenv-init -)"\nfi' >> ~/.zshrc
echo '' >> ~/.zshrc;

