BASE_DIR=$(dirname "$0")

service snapd start

snap install go --classic

bash $BASE_DIR/pkg.sh