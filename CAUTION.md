# :warning: CAUTION

## general

Every execution, installation, configuration is only tested on ubuntu 18.10 and kali-rolling, though it would be theoretically easy to tweak for other linux distos or unix-like oses.

## [install.sh](install.sh)

This internally executes the following scripts. So, before executing [install.sh](install.sh), be careful of cautions below.

### [apt/install.sh](apt/install.sh)

This literally only works with apt. `apt` is used instead of `apt-get`.

#### [apt/docker.sh](apt/docker.sh)

1. This only works on x86_64 or AMD64 architecture.
2. This is automatically called by [apt/install.sh](apt/install.sh).
3. This only works for ubuntu. However, ubuntu version does not matter.

Refer [the official website's explanation](https://docs.docker.com/install/linux/docker-ce/ubuntu/) if needed.

### [node/install.sh](node/install.sh)

[install.sh](install.sh) exports env var `$DOTFILES_NODE_VER=11` and [node/install.sh](node/install.sh) uses `$DOTFILES_NODE_VER`. If you want to install other version of node on system, just edit `$DOTFILES_NODE_VER` on [install.sh](install.sh).