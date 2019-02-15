BASE_DIR=$(dirname "$0")

apt update
apt upgrade
sh $BASE_DIR/node/nvm.upgrade.sh
