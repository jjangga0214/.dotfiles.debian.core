# node

## [install.sh](install.sh)

This is for installing node, npm, yarn, nvm, and global npm packages. You need to export `$NODE_VER`.

```bash
sudo NODE_VER=11 bash install.sh
```

### [node.sh](./node.sh)

This installs node, npm, yarn directly on system, NOT as virtual environments by nvm. In order to install desired version, this registers official PPAs of node and yarn, ignoring ubuntu's official `nodejs` apt package.

### [nvm.sh](nvm.sh)

This installs nvm. nvm provides one-liner installation. However, **nvm.sh** does not use it. That's to prevent nvm config code written to .zshrc. Rather, nvm config is pre-written to dedicated file([../oh-my-zsh/nvm.zsh](../oh-my-zsh/nvm.zsh)), which would be in `$ZSH_CUSTOM` directory.

<small>ref: <https://github.com/creationix/nvm#manual-install> </small>

### [pkg.sh](pkg.sh)

By using nvm, global npm packages are installed and managed seperately between nodes with different versions. So, if a certain package does not necessarily reinstalled, it'd be good to use 'system node', which is directly installed to os.

[pkg.sh](pkg.sh) installs global packages on 'system node'. For this strategy, execute `nvm use system` and then handle global packages.

```bash
nvm use system && npm i -g <pkg>
```