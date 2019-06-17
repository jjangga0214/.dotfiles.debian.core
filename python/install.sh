BASE_DIR=$(dirname "$0")

apt install -y python-pip
apt install -y python3-pip
apt install -y pipenv # only works on Debian Buster+. (note that ubuntu 19.04 is based on Debian Buster)

bash $BASE_DIR/pkg.sh
bash $BASE_DIR/pyenv.sh
