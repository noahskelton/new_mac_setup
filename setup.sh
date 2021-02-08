set -euxo pipefail

# Homebrew
# --------

# Pass in /dev/null so we do not have a prompt
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
curl -O https://raw.githubusercontent.com/calmoo/new_mac_setup/master/Brewfile
brew tap homebrew/bundle
brew bundle
rm -rf Brewfile

# virtualenv
pip3 install virtualenv
# Without this, you get asked the first time you make a virtualenv
mkdir -p ~/.virtualenvs

curl -O https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Blue%20Matrix.itermcolors
open "Blue Matrix.itermcolors"
rm -rf "Blue Matrix.itermcolors"

npm install -g spaceship-prompt
npm i -g macdarkmode
darkmode true

curl -O https://gist.githubusercontent.com/macintacos/c6f58d2b0ed167b71466b20ec3fed7e7/raw/c411b950135ff8b56b9bb1ec1084747ccb6094dd/mongod.json
mv "mongod.json" "$HOME/.lnav/formats/installed"
rm -rf "mongod.json"

# Set up git

git config --global push.default current
git config --global user.name "Noah Skelton"
git config --global user.email skelton.noah@gmail.com
