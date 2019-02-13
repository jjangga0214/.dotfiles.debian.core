# The order is important. For example, curl should be installed before executing `sh apt.docker.install.sh`

apt update
apt upgrade -y

# env
apt install -y vim
apt install -y curl
apt install -y zsh
apt install -y fonts-powerline
apt install -y p7zip-full
# apt install -y gnome-shell-extensions
apt install -y chrome-gnome-shell

# util
apt install -y xclip
apt install -y trash-cli
apt install -y gparted
add-apt-repository -y ppa:yannubuntu/boot-repair
apt install -y boot-repair

# dev
apt install -y git
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
apt install -y git-lfs
sh docker.sh
