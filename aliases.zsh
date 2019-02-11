# zsh
alias zr="vi ~/.zshrc"
alias zrg="gedit ~/.zshrc &!"
alias zs="source ~/.zshrc"

## ohmyzsh
alias zc="$ZSH_CUSTOM"
alias za="vi $ZSH_CUSTOM/aliases.zsh"
alias zag="gedit $ZSH_CUSTOM/aliases.zsh &!"

# cli

## os, preinstalled
alias t="touch"
alias e="exit"
alias llg="ll | grep"

## util
alias c="xclip -sel clip"
alias v="xclip -o -sel clip"
alias d="curl '$(xclip -o -sel clip)'"
alias ev="echo '$(xclip -o -sel clip)'"
alias th="trash"

## dev
alias g_="git commit -m"
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
