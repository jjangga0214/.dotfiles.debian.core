# :warning: CAUTION

## general

* Every execution, installation, configuration is only tested on ubuntu 18.10 and kali-rolling, though it would be theoretically easy to tweak for other linux distos or unix-like OS.
* Git submodules are used.
  * Create or checkout a branch before making commit.
  * Check their CAUTION.md (if existing) as well.

## environment variables

You can export env vars to override default. Every env var has default value and respects exported value over default.

(type, default value, source file)

* `$DOTFILES_DOCKER_INSTALL` (bool, `false`, [apt/install.sh](apt/install.sh)): whether to install docker (official way of installation for debian)
* `$DOTFILES_NODE_VER` (int, `11`, [node/node.sh](node/node.sh)): node.js version to install

## specific

[install.sh](install.sh) internally executes the following scripts. So, before executing [install.sh](install.sh), be careful of cautions below.

### [apt/install.sh](apt/install.sh)

This literally only works with **apt**. `apt` is used instead of `apt-get`.

### [apt/docker.sh](apt/docker.sh)

1. This only works on x86_64 or AMD64 architecture.
2. This is automatically called by [apt/install.sh](apt/install.sh).
3. This only works for debian or some debian-based distro. Check if distro version is compatible (on the official site).

Refer [the official website's explanation](https://docs.docker.com/install/linux/docker-ce/debian/) if needed.