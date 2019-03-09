BASE_DIR=$(dirname "$0")
ZSH_CUSTOM=~/.oh-my-zsh/custom 

# aliases
cp $BASE_DIR/oh-my-zsh/aliases.zsh $ZSH_CUSTOM

# environment variables
cp $BASE_DIR/oh-my-zsh/env.zsh $ZSH_CUSTOM

# environment variables
cp $BASE_DIR/oh-my-zsh/functions.zsh $ZSH_CUSTOM

# .zshrc
cp ~/.zshrc $BASE_DIR/oh-my-zsh/.zshrc