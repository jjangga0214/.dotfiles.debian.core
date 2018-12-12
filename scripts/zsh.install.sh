#!/bin/bash
apt install zsh
echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
apt install fonts-powerline
## theme: pure(also known as 'refined')
npm i -g pure-prompt --allow-root --unsafe-perm=true
wd=$(pwd)
## plugin: alias-tips
# cd ${ZSH_CUSTOM1:-$ZSH/custom}/plugins # 아래 라인과 같다. 
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/djui/alias-tips.git
cd $wdv
## theme: dracula
mkdir ~/.oh-my-zsh/external/dracula
git clone https://github.com/dracula/zsh.git ~/.oh-my-zsh/external/dracula
mv ~/.oh-my-zsh/external/dracula/zsh/* ~/.oh-my-zsh/external/dracula/
rm -r ~/.oh-my-zsh/external/dracula/zsh
ln -s ~/.oh-my-zsh/external/dracula/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme
cp others/.zshrc ~/.zshrc
source ~/.zshrc