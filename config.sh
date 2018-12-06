#!/bin/bash
echo "installing gnome-tweak-tool, vim, git, snapd(for old ubuntu) .." 
apt install -y gnome-tweak-tool vim git snapd
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
        filename=$(basename -- "$f")
        filename="${filename%.tar.xz}"
        mkdir $2/$filename
        tar -xf $f -C $2/$filename 
         # OSX_ONE9.2.tar.xz 는 바로 압축을 풀면 안되고, 내부의 OSX_ONE 폴더를 $idest에 위치시켜야 한다.  
        if [ "$filename" = "OSX_ONE9.2" ]
        then
            mv $2/$filename/OSX_ONE $2
            rm -rf $2/$filename
        continue
        fi
    done
}
echo "installing icons .."
decompress_all_to ./icons $idest
add_repo_and_install(){
    add-apt-repository $1
    apt update    
    apt install -y $2
}
## [flat-remix](https://github.com/daniruiz/flat-remix)
add_repo_and_install ppa:daniruiz/flat-remix flat-remix
## [numix-icon-theme-circle](https://github.com/numixproject/numix-icon-theme-circle)
add_repo_and_install ppa:numix/ppa numix-icon-theme-circle
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