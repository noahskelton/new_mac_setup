set -euxo pipefail

# Homebrew
# --------

# Pass in /dev/null so we do not have a prompt
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" < /dev/null
curl -O https://raw.githubusercontent.com/calmoo/new_mac_setup/master/Brewfile

brew tap homebrew/bundle
brew bundle
rm -rf Brewfile
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
# virtualenv
pip3 install virtualenv
# Without this, you get asked the first time you make a virtualenv
mkdir -p ~/.virtualenvs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

curl -O https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Blue%20Matrix.itermcolors
open "Blue Matrix.itermcolors"
rm -rf "Blue Matrix.itermcolors"

npm install -g spaceship-prompt


# Set up git

git config --global push.default current
git config --global user.name "Noah Skelton"
git config --global user.email skelton.noah@gmail.com
