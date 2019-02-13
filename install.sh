# apt.insatll.sh should be the first as others depends on it (e.g. using git, node)
sh apt/install.sh
sh oh-my-zsh/install.sh
sh node/install.sh
sh others/config.sh