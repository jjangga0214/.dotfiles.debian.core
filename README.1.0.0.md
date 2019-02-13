# .dotfiles

## :warning: CAUTION

Read [CAUTION.md](CAUTION.md) before any execution here.

## what [install.sh](install.sh) does

```bash
sudo sh install.sh
```

This executes the followings.

### [apt/install.sh](apt/install.sh)  

This updates, upgrades, and installs apt packages. See [here](apt/README.md)  

### [oh-my-zsh/install.sh](oh-my-zsh/install.sh)

This installs ohmyzsh, plugins, [aliases](oh-my-zsh/aliases.zsh), [environment variables](oh-my-zsh/env.zsh), [.zshrc](oh-my-zsh/.zshrc). See [here](oh-my-zsh/README.md)

### [node/install.sh](node/install.sh)  

This installs node, npm, yarn, nvm, and global npm packages. See [here](node/README.md)  

### [others/config.sh](others/config.sh)  

This is intended to config the system globally as well as specific tools. See [here](others/README.md#config-sh).

## what [install.sh](install.sh) does NOT: recommended maunal executions

### util

- chrome: from the official website
- blender: from ubuntu software center(ver 2.79) or the official website(ver 2.80 beta)

### dev

- vscode: install it by `.deb` file from the official website. This is because vscode's snap app has _several issues [[1]](#1)_. 
- jetbrains toolbox: from the official website.

### env

#### zsh  

Config zsh as default shell instead of bash. The change would be applied after rebooting. 

```bash
sudo -s
chsh -s $(which zsh)
chsh -s $(which zsh) $(whoami)
```

Enable spelling check by executing the following on zsh.

```zsh
setopt correct
```

### gnome extensions

- Clipboard Indicator [[2]](#2)

### [others/snap.sh](others/snap.sh)

This installs snap applications. See [here](others/README.md#snap-sh).

## references

- <a name="1">[1]</a>: keyboard and font bug. Visit [forum.snapcraft.io](https://forum.snapcraft.io/t/keyboard-input-method-doesnt-work-properly-on-snap-application/9901) for further detail.
- <a name="2">[2]</a>: 
[Clipboard Indicator](https://extensions.gnome.org/extension/779/clipboard-indicator/)