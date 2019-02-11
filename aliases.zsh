# zsh
alias vz="vi ~/.zshrc"
alias gz="gedit ~/.zshrc &!"
alias sz="source ~/.zshrc"

## ohmyzsh
alias zc="$ZSH_CUSTOM"
alias vza="vi $ZSH_CUSTOM/aliases.zsh"
alias gza="gedit $ZSH_CUSTOM/aliases.zsh &!"

# cli

## os, preinstalled
alias t="touch"
alias e="exit"
alias llg="ll | grep"

## util
alias c="xclip -selection clipboard"
alias v="xclip -out -selection clipboard"
alias d="curl '$(xclip -out -selection clipboard)'"
alias ev="echo '$(xclip -out -selection clipboard)'"
alias th="trash"

## dev
alias gl="git log --graph --oneline"
alias yl="yarn run lint"
alias ys="yarn run serve"

## env
alias s="/media/gilchan/SHARE"

# app

## os, preinstalled
alias ge="gedit"
alias xo="xdg-open"
alias n="nautilus . &!"

## dev
alias jw="webstorm . &!"
# alias jw_="webstorm . &!"
alias co="code . &!"
# alias co_="code . &!"
alias gk="gitkraken"
