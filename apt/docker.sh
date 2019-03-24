# [ref](https://docs.docker.com/install/linux/docker-ce/debian/)

# prerequistes
apt install-y apt-transport-https
apt install-y ca-certificates
apt install-y gnupg2
apt install-y software-properties-common 

# add Docker’s official GPG key    
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

# just printing on the console docker's fingerprint
apt-key fingerprint 0EBFCD88

# this only works on x86_64 or amd64 architecture
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

# Make sure you are about to install from the Docker repo instead of the default Ubuntu repo
# apt-cache policy docker-ce

# installing docker ce 
apt update
apt install -y docker-ce docker-ce-cli containerd.io

# add user to docker group so that sudo is not needed when executing docker 
usermod -aG docker ${USER}