# go

[install.sh](install.sh) installs go from snap store. Some go packages are also to be installed by [pkg.sh](pkg.sh), which is called in [install.sh](install.sh).

It does not config anything such as `$GOPATH` and `$GOROOT`. But they are specified in [../oh-my-zsh/env.zsh](../oh-my-zsh/env.zsh) and not tested for go as snap app.

If manual installation or config is needed, do NOT execute the shell file like below, but do it by your self.

```bash
sudo bash install.sh
```