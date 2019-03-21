BASE_DIR=$(dirname "$0")

# The order is important. 
# For example, curl should be installed before executing `docker.sh`

apt update
apt upgrade -y

# env
apt install -y vim
apt install -y curl
apt install -y zsh
apt install -y python3-pygments # this is dependency of colorize plugin(ccat) of oh-my-zsh. ref [here](https://github.com/robbyrussell/oh-my-zsh/issues/6616)
# apt install -y python-pygments
apt install -y fonts-powerline
apt install -y p7zip-full
# apt install -y gnome-shell-extensions
apt install -y chrome-gnome-shell
apt install -y libssl-dev
apt install -y build-essential
apt install gcc g++ make

# util
apt install -y xclip
apt install -y trash-cli
apt install -y gparted
add-apt-repository -y ppa:yannubuntu/boot-repair
apt update
apt install -y boot-repair

# dev
apt install -y git
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
apt install -y git-lfs
bash $BASE_DIR/docker.sh
