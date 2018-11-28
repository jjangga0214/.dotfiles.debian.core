#
echo "installing gnome-tweak-tool, vim .." 
sudo apt install gnome-tweak-tool
sudo apt-get install vim
# theme and icons
## preemptive defense
sudo mkdir ~/.local/share/icons
sudo mkdir ~/.local/share/themes
echo "installing icons .."
sudo cp -R ./icons/* ~/.local/share/icons
echo "installing themes .."
sudo cp -R ./themes/* ~/.local/share/themes
sudo apt-get install gnome-shell-extension-top-icons-plus
# git lfs
echo "installing git-lfs..".
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
