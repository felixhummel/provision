Install git
```
sudo apt-get update
sudo apt-get install -y git
```

Clone and install essentials
```
git clone https://github.com/felixhummel/provision.git ~/1-provision
cd ~/1-provision
./1-essentials
```

Linux Mint uses different codenames, but has Ubuntu under the hood.
```
[[ -f /etc/os-release ]] && source /etc/os-release || UBUNTU_CODENAME=$(lsb_release -cs)
```
