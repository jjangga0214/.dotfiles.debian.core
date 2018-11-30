#
echo "installing gnome-tweak-tool, vim, git .." 
sudo apt-get install -y gnome-tweak-tool
sudo apt-get install -y vim
sudo apt-get install -y git 
# git 인증 cache 를 50분(3000초)으로 등록.
git config --global credential.helper 'cache --timeout=3000'
# theme and icons
## preemptive defense
sudo mkdir ~/.local/share/icons
sudo mkdir ~/.local/share/themes
echo "installing icons .."
sudo cp -R ./icons/* ~/.local/share/icons
echo "installing themes .."
sudo cp -R ./themes/* ~/.local/share/themes
# gnome-shell-extensions
sudo apt-get install -y gnome-shell-extensions
sudo apt install -y chrome-gnome-shell
sudo apt-get install -y gnome-shell-extension-top-icons-plus
# git lfs
echo "installing git-lfs..".
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
