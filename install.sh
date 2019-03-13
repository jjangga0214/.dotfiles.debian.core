BASE_DIR=$(dirname "$0")

export NODE_VER=11 # used in ./node/node.sh

# apt.insatll.sh should be the first as others depends on it (e.g. using git, node)
bash $BASE_DIR/apt/install.sh
bash $BASE_DIR/others/config.sh
bash $BASE_DIR/others/snap.sh
bash $BASE_DIR/oh-my-zsh/install.sh
bash $BASE_DIR/node/install.sh
bash $BASE_DIR/go/install.sh
# bash $BASE_DIR/python/install.sh