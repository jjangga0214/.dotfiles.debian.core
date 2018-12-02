#!/bin/bash
echo "installing gnome-tweak-tool, vim, git .." 
apt install -y gnome-tweak-tool vim git
# git 인증 cache 를 50분(3000초)으로 등록.
git config --global credential.helper 'cache --timeout=3000'
# git lfs
echo "installing git-lfs..".
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
apt install -y git-lfs
# theme and icons
## preemptive defense
tdest=~/.local/share/icons
idest=~/.local/share/icons
mkdir $tdest
mkdir $idest
decompress_all_to(){ 
    for f in $1/*.tar;
    do
        tar -xf f -C $2
    done

    for f in $1/*.tar.gz;
    do
        tar -zxf f -C $2
    done
}
echo "installing icons .."
decompress_all_to ./icons $idest
echo "installing themes .."
decompress_all_to ./themes $tdest
# gnome-shell-extensions
apt install -y gnome-shell-extensions chrome-gnome-shell gnome-shell-extension-top-icons-plus
# shutter
add-apt-repository ppa:shutter/ppa
apt update
apt install shutter
## dependencies for shutter capture feature
install_deb(){
    dpkg -i $1
    apt -f install
}
install_deb ./dependencies/libgoocanvas-common_1.0.0-1_all.deb
install_deb ./dependencies/libgoocanvas3_1.0.0-1_amd64.deb
install_deb ./dependencies/libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb
# boot-repair
add-apt-repository ppa:yannubuntu/boot-repair
apt update
apt install -y boot-repair
