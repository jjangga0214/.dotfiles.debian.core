# node: npm will be automatically installed with node together
curl -sL "https://deb.nodesource.com/setup_$NODE_VER.x" | sudo -E bash -
apt install -y nodejs

# yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt update && apt install yarn