# $DOTFILES_DEBIAN_CORE_DOCKER_INSTALL: true to install, false not to install docker for debian
: "${DOTFILES_DEBIAN_CORE_DOCKER_INSTALL:=false}"

BASE_DIR=$(dirname "$0")

# The order is important. 
# For example, curl should be installed before executing `docker.sh`

apt update
apt upgrade -y

# env
apt install -y vim
apt install -y curl
apt install -y zsh
# python3-pygments is a dependency of colorize plugin (ccat) of oh-my-zsh. 
# ref [here](https://github.com/robbyrussell/oh-my-zsh/issues/6616)
apt install -y python3-pygments # apt install -y python-pygments
apt install -y p7zip-full
# apt install -y gnome-shell-extensions
apt install -y chrome-gnome-shell
apt install -y libssl-dev
apt install -y build-essential
apt install -y gcc g++ make
apt install -y snapd
apt install -y flatpak gnome-software-plugin-flatpak && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
apt install -y powerline
apt install -y fonts-powerline
apt install -y fonts-nanum
apt install -y fonts-nanum-coding
apt install -y fonts-nanum-eco
apt install -y fonts-nanum-extra
apt install -y fonts-naver-d2coding
apt install -y fonts-hack
apt install -y fonts-font-awesome
apt install -y ruby-font-awesome-rails # for colorls icons
apt install -y font-manager
apt install -y dconf-editor
apt install -y ubuntu-restricted-extras

# util
apt install -y xclip
apt install -y trash-cli
apt install -y gparted
add-apt-repository -y ppa:yannubuntu/boot-repair # boot-repair
add-apt-repository -y ppa:ricotz/docky # plank
apt update
apt install -y boot-repair
apt install -y plank

# dev
apt install -y git
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
apt install -y git-lfs
if $DOTFILES_DEBIAN_CORE_DOCKER_INSTALL; then
bash $BASE_DIR/docker.sh
fi
