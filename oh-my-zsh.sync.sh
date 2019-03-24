BASE_DIR=$(dirname "$0")

bash $BASE_DIR/.dotfiles.oh-my-zsh/config.sh

# .zshrc
cp $HOME/.zshrc $BASE_DIR/.dotfiles.oh-my-zsh/.zshrc