BASE_DIR=$(dirname "$0")

# apt.insatll.sh should be the first as others depends on it (e.g. using git, node)
bash $BASE_DIR/apt/install.sh
bash $BASE_DIR/others/config.sh
bash $BASE_DIR/others/snap.sh
bash $BASE_DIR/.dotfiles.oh-my-zsh/install.sh
bash $BASE_DIR/node/install.sh
# go/install.sh should be latter than .dotfiles.oh-my-zsh/install.sh due to $GOROOT resolution
bash $BASE_DIR/go/install.sh 
bash $BASE_DIR/ruby/install.sh 
# bash $BASE_DIR/python/install.sh

git clone https://github.com/jjangga0214/note.git $HOME/note
# git clone https://github.com/jjangga0214/articles.git $HOME/articles