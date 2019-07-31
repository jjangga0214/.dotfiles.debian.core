# maunal installation, configuration and upgrade

At least currently, some tasks are to be manually handled.

## env

### zsh and oh-my-zsh

zsh and oh-my-zsh would be installed and configured automatically. However, following config is recommended to do manually.

#### default shell

Config zsh as default shell instead of bash. The change would be applied after rebooting.

```bash
sudo -s
chsh -s $(which zsh)
chsh -s $(which zsh) $(whoami)
```

#### spelling check

Enable spelling check by executing the following on zsh.

```zsh
setopt correct
```

### terminal

- set font as **Hack Regular**
- [Mayccoll/Gogh](https://github.com/Mayccoll/Gogh): currently `Aci`

### flatpak

Execute [flatpak/pkg.sh](flatpak/pkg.sh) AFTER REBOOTING of the system.

### gnome

These settings are, of cource, optional.

```bash
# to enable minimize animation of window
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
# to show battery percentage metric on top shell
gsettings set org.gnome.desktop.interface show-battery-percentage true
```

#### extensions

- Clipboard Indicator [[2]](#2)
- [docker status](https://extensions.gnome.org/extension/1065/docker-status/)
- [gs connect](https://extensions.gnome.org/extension/1319/gsconnect/)
  - ref: <https://github.com/andyholmes/gnome-shell-extension-gsconnect/wiki>
  - note: download android app, allow permissions(double check on setting app), install browser extension

### dock

#### to hide default dock

To hide default dock, execute the commands below. (replace `false` to `true` to revert)

```bash
gsettings set org.gnome.shell.extensions.dash-to-dock autohide false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false
```

#### dash to dock

You can consider installing [dash to dock](https://extensions.gnome.org/extension/307/dash-to-dock/)

#### plank

To make plank autostart on boot, create a new file **~/.config/autostart/plank.desktop** and set its content like the below. [ref](https://www.jernejsila.com/2017/02/03/install-plank-ubuntu-make-start-boot/)

```
[Desktop Entry]
Type=Application
Exec=plank
Hidden=false
NoDisplay=false
Name[en_US]=plank
Name=plank
Comment[en_US]=plank
Comment=plank
X-GNOME-Autostart-Delay=2
X-GNOME-Autostart-enabled=true
```

### rust

```bash
sudo bash rust/install.sh
```

Rust installation is interactive. Choose custom installation from the prompt. Then choose NOT auto-modifying `PATH` by installer.

### others

- [sharkdp/bat](https://github.com/sharkdp/bat)
  - syntax file
    - how to add a new syntax: <https://github.com/sharkdp/bat#adding-new-syntaxes--language-definitions>
    - add syntax for vue: read [this issue](https://github.com/sharkdp/bat/issues/56)
- [minikube](https://github.com/kubernetes/minikube/releases)
- [docker-compose](https://docs.docker.com/compose/install/)
- [docker-machine](https://docs.docker.com/machine/install-machine/)

### signing git commit with gpg

For setting gpg signiture on git commit, refer [here](https://gist.github.com/ankurk91/c4f0e23d76ef868b139f3c28bde057fc). Note that it's of course totally optional and might make some git tools such as gitkraken disable to commit.

## util

- chrome: install it from the official website
- blender: install it from ubuntu software center(ver 2.79)(if ubuntu) or the official website(ver 2.80 beta).

## dev

- vscode
  - install it by `.deb` file from the official website. This is because vscode's snap app has _several issues [[1]](#1)_.
  - **settings sync** ([github](https://github.com/shanalikhan/code-settings-sync)) : My gist id for setting file is **b607c99a1305a67239d653e29cc21aac**.
- jetbrains toolbox: install it from the official website.

## upgrade

```bash
sudo zsh upgrade.sh
```

## footnotes

- <a name="1">[1]</a>: keyboard and font bug. Visit [forum.snapcraft.io](https://forum.snapcraft.io/t/keyboard-input-method-doesnt-work-properly-on-snap-application/9901) for further detail.
- <a name="2">[2]</a>:
  [Clipboard Indicator](https://extensions.gnome.org/extension/779/clipboard-indicator/)
