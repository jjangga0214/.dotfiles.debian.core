# $DOTFILES_NODE_VER: integer of node version. e.g. 11
: "${DOTFILES_NODE_VER:=14}"

apt remove --purge node
apt remove --purge nodejs

# node: npm will be automatically installed with node together
curl -sL "https://deb.nodesource.com/setup_$DOTFILES_NODE_VER.x" | sudo -E bash -
apt install -y nodejs
apt install -y npm
# npm install -g npm@latest

# yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt update && apt install yarn