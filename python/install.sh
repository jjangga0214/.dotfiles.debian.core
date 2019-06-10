BASE_DIR=$(dirname "$0")

apt install -y python-pip
apt install -y python3-pip

bash $BASE_DIR/pkg.sh
bash $BASE_DIR/pyenv.sh