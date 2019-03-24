# apt

[install.sh](install.sh) installs apt packages. Docker is installed by [docker.sh](docker.sh), which is called by [install.sh](install.sh) if `$DOTFILES_DOCKER_INSTALL` is set to `true`.

```bash
sudo DOTFILES_DOCKER_INSTALL=true bash install.sh
```