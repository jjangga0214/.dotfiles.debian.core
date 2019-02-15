# node

## :warning: CAUTION

Before installing, check node version on [node.sh](./node.sh). In the file, change a value of `$NODE_VER` variable for the desired version rather than predefined default version (currently 11).  

## [install.sh](install.sh)

This is for installing node, npm, yarn, nvm, and global npm packages.

```bash
sudo sh install.sh
```

This executes the followings.

### [node.sh](./node.sh)

This installs node, npm, yarn directly on system, NOT as virtual environments.
In order to install desired version, this registers official PPAs of node and yarn, ignoring ubuntu's official `nodejs` apt package.

### [nvm.sh](nvm.sh)

This installs nvm.

### [pkg.sh](pkg.sh)

This installs global npm packages.

- public-ip-cli [[1]](#1)

## references

- <a name="1">[1]</a>: [sindresorhus/public-ip-cli](https://github.com/sindresorhus/public-ip-cli)