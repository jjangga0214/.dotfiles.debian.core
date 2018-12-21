#!/bin/bash
echo "installing gnome-tweak-tool, vim, git, gpa, seahorse, xz-utils, snapd(for old ubuntu), unzip, nodejs .." 
apt install -y gnome-tweak-tool vim git gpa xz-utils seahorse snapd unzip nodejs npm build-essential curl 
# sudo snap install go --classic
echo "installing uim for Korean supoort rather than iBus, which is default on ubuntu 18.04"
apt install uim uim 
# git 인증 cache 를 50분(3000초)으로 등록.
git config --global credential.helper 'cache --timeout=3000'
# git lfs
echo "installing git-lfs..".
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
apt install -y git-lfs
# gitkraken
## gitkraken 에 대해서 
## snap connect gitkraken:removable-media 이 작동하지 않아 
## --devmode 를 설정한다. 
snap install gitkraken --devmode
# icons, themes, and gnome shell
##### tdest=~/.themes
##### idest=~/.icons
##### tdest=~/.local/share/themes
##### idest=~/.local/share/icons
tdest=/usr/share/themes
idest=/usr/share/icons
mkdir $tdest
mkdir $idest
decompress_all_to(){ 
    for f in $1/*.tar;
    do
        tar -xf $f -C $2
    done

    for f in $1/*.tar.gz;
    do
        tar -zxf $f -C $2
    done

    for f in $1/*.tar.xz;
    do 
        local fname=$(basename -- "$f")
        fname="${fname%.tar.xz}"
        mkdir $2/$fname
        tar -xf $f -C $2/$fname 
        
        local how_many=$(ls -al $2/$fname | grep -c ^d)
        
        if [[ $how_many == 1 ]]; 
        then
            local inner_one=$(ls $2/$fname)
            mv $2/$fname/$inner_one/* $2/$fname
            rm $2/$fname/$inner_one
        fi

        # OSX_ONE9.2.tar.xz 는 바로 압축을 풀면 안되고, 내부의 OSX_ONE 폴더를 $idest에 위치시켜야 한다.
        if [[ "$fname" == "OSX_ONE9.2" ]]; 
        then 
            mv $2/$fname/OSX_ONE $2 
            rm -rf $2/$fname 
        fi 
    done

    for f in $1/*.zip;
    do
        unzip $f -d $2
    done
}
echo "installing icons .."
decompress_all_to ./icons $idest
add_repo_and_install(){
    add-apt-repository -y $1
    apt update    
    apt install -y $2
}
## [flat-remix](https://github.com/daniruiz/flat-remix)
add_repo_and_install ppa:daniruiz/flat-remix flat-remix
## [numix-icon-theme-circle](https://github.com/numixproject/numix-icon-theme-circle)
add_repo_and_install ppa:numix/ppa numix-icon-theme-circle
add_repo_and_install ppa:snwh/ppa moka-icon-theme
apt install -y faba-icon-theme faba-mono-icons
echo "installing themes .."
decompress_all_to ./themes $tdest
snap install gtk-common-themes
## and [flat-remix-gtk](https://github.com/daniruiz/flat-remix-gtk)
apt install -y flat-remix-gtk
echo "installing gnome shells .."
apt install flat-remix-gnome
## gnome-shell-extensions
apt install -y gnome-shell-extensions chrome-gnome-shell gnome-shell-extension-top-icons-plus
# shutter
add-apt-repository ppa:shutter/ppa
apt update
apt install shutter
## 3 dependencies for shutter capture feature
install_deb(){
    dpkg -i $1
    apt -f install
}
install_deb ./dependencies/libgoocanvas-common_1.0.0-1_all.deb
install_deb ./dependencies/libgoocanvas3_1.0.0-1_amd64.deb
install_deb ./dependencies/libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb
# boot-repair
add_repo_and_install ppa:yannubuntu/boot-repair boot-repair
# vscode
snap install vscode --classic
# ampareinvertcolor postman, 
## ampareinvertcolor : inverts color code (hex)
snap install ampareinvertcolor postman
# slack
snap install slack --classic
# xclip 
echo "" >> ~/.bashrc
echo '# added by config.sh written by jjangga for xclip shortcut as c' >> ~/.bashrc
echo 'alias c="xclip -selection clipboard"' >> ~/.bashrc
# refresh bash
source ~/.bashrc
# cursor Bibata
## snap install inkscape
## unzip ./others/Bibata_Cursor_master.zip -d ./others/
## chmod +x ./others/build.sh
## ./others/build.sh
## chmod +x ./others/Installer_Bibata.sh
## ./others/Installer_Bibata.sh 
## mv ./others/Bibata_* $idest
# zsh
bash scripts/zsh.install.sh
# hangul.sh for uim 입력기
cp others/hangul.sh ~
# [sindresorhus/public-ip-cli](https://github.com/sindresorhus/public-ip-cli)
npm i -g public-ip-cli
