# :warning: CAUTION

Every execution, installation, configuration is only tested on ubuntu 18.10, though it would be  theoretically easy to tweak for other linux distos or unix-like oses.

## [install.sh](install.sh)

This internally executes the following shell script. So, before executing [install.sh](install.sh), be careful of cautions below.

### [apt/install.sh](apt/install.sh)

This literally only works with apt. 

#### [apt/docker.sh](apt/docker.sh)

1. This only works on x86_64 or AMD64 architecture.
2. This is automatically called by [apt/install.sh](apt/install.sh).
3. This only works for ubuntu. However, ubuntu version does not matter.

Refer [the official website's explanation](https://docs.docker.com/install/linux/docker-ce/ubuntu/) if needed.
