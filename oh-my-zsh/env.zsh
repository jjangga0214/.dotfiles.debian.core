# env
export S="/media/$(whoami)/SHARE"
export DOT="~/.dotfiles"
export ZR="~/.zshrc"
## GOROOT 
### Where go compiler would be considered installed. 
### /usr/local/go is the default. 
### This isn't needed if go is installed with snap
export GOROOT=/usr/local/go
## GOPATH 
### Where go packages and projects will reside. 
### e.g. `go get <pkg>` installs <pkg> here.
export GOPATH=$HOME/go.pkgs 
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin