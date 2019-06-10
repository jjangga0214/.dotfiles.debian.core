BASE_DIR=$(dirname "$0")

apt update
apt upgrade

zsh $BASE_DIR/.dotfiles.oh-my-zsh/upgrade.sh
zsh $BASE_DIR/node/nvm.upgrade.sh
zsh $BASE_DIR/python/env.upgrade.sh
