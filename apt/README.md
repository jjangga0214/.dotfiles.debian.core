# apt

[install.sh](install.sh) installs apt packages. Docker is installed by [docker.sh](docker.sh), which is called by [install.sh](install.sh) if `$DOTFILES_DEBIAN_CORE_DOCKER_INSTALL` is set to `true`. If `$DOTFILES_DOCKER_DEBIAN_RELEASE` is undefined, `$(lsb_release -cs)` would be used. Some distro does not provide `lsb_release` command, or the command returns version of them, rather than version of debian. In that case, manually specify `$DOTFILES_DOCKER_DEBIAN_RELEASE`(e.g. `"stretch"`).

```bash
sudo \
DOTFILES_DEBIAN_CORE_DOCKER_INSTALL=true \
DOTFILES_DOCKER_DEBIAN_RELEASE=stretch \
bash install.sh
```