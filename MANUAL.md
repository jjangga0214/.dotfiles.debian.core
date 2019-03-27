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

#### keep this project in sync

For understanding mantainence strategy, please read [this](oh-my-zsh/README.md#maintenance-of-zsh-and-oh-my-zsh). [oh-my-zsh.sync.sh](oh-my-zsh.sync.sh) exactly does that.

```bash
zsh oh-my-zsh.sync.sh
```

### gnome extensions

* Clipboard Indicator [[2]](#2)

### signing git commit with gpg

For setting gpg signiture on git commit, refer [here](https://gist.github.com/ankurk91/c4f0e23d76ef868b139f3c28bde057fc). Note that it's of course totally optional and might make some git tools such as gitkraken disable to commit.

## util

* chrome: install it from the official website
* blender: install it from ubuntu software center(ver 2.79)(if ubuntu) or the official website(ver 2.80 beta).

## dev

* vscode
  * install it by `.deb` file from the official website. This is because vscode's snap app has _several issues [[1]](#1)_.
  * **settings sync** ([github](https://github.com/shanalikhan/code-settings-sync)) : My gist id for setting file is **b607c99a1305a67239d653e29cc21aac**.
* jetbrains toolbox: install it from the official website.

## upgrade

```bash
sudo zsh upgrade.sh
```

## footnotes

* <a name="1">[1]</a>: keyboard and font bug. Visit [forum.snapcraft.io](https://forum.snapcraft.io/t/keyboard-input-method-doesnt-work-properly-on-snap-application/9901) for further detail.
* <a name="2">[2]</a>: 
[Clipboard Indicator](https://extensions.gnome.org/extension/779/clipboard-indicator/)
