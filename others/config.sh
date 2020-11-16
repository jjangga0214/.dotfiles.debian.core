# dev
git config --global credential.helper 'cache --timeout=604800' # 604800 secs = 7 days
git config --global core.editor 'vi'

git config --global user.name 'GIL B. Chan'
git config --global user.email 'bnbcmindnpass@gmail.com'

# env
## for executing vscode with root privilege 
## value for `--user-data-dir` option. see alias **_vsc** of [../.dotfiles.oh-my-zsh/aliases.zsh]
mkdir -p $HOME/.config/vscode 