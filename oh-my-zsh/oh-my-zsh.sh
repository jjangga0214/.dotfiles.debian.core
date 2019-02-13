# oh-my-zsh 
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ZSH_CUSTOM=~/.oh-my-zsh/custom 

# plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/zsh-syntax-highlighting
git clone https://github.com/djui/alias-tips $ZSH_CUSTOM/plugins

# config
sh oh-my-zsh.config.sh