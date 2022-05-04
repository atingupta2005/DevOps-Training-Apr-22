# Trainer Tasks

## Setup Shell in a Box (Access Ubuntu SSH/Shell/Console from Browser)
 - Refer: https://github.com/shellinabox/shellinabox
 - Refer: https://linoxide.com/web-remote-your-server/
```
sudo apt -y update
```

```
sudo apt -y install openssl
```

```
sudo apt -y install shellinabox
```

```
sudo /etc/init.d/shellinabox start
```

```
sudo sed -i 's/SHELLINABOX_ARGS="--no-beep"/SHELLINABOX_ARGS="--no-beep --disable-ssl"/g' /etc/default/shellinabox
```

```
sudo /etc/init.d/shellinabox restart
```

 - Open http://ec2-54-201-159-31.us-west-2.compute.amazonaws.com:4200
 - Note: Use Ctrl+Shift+V to paste

## Setup multiple users in Ubuntu
- For each participant, we need to setup login accounts
```
sudo groupadd docker
sudo usermod -aG docker $USER
```

```
for ((i=1;i<=100;i++)); do
	export username="u$i"
	sudo useradd -g docker -m -p "p" $username;sudo usermod -aG sudo $username;echo $username:p | sudo /usr/sbin/chpasswd;sudo chown -R  $username:root /home/$username
done
```

- Install Docker
```
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
```

- Comman softwares
```
sudo apt -y update
sudo apt -y install tree
```

- Create Python venv
```
sudo apt install -y python3-pip
pip3 -V
```
```
sudo apt install -y python3-virtualenv
```
```
virtualenv ~/venv
```
```
source ~/venv/bin/activate
```


- Install Jupyter Notebook
```
source ~/venv/bin/activate
pip install jupyter
```

-  Clone Git Repo
```
cd
git clone
cd
```

- Start Jupyter server with different port
```
cd
jupyter notebook --ip 0.0.0.0 --port 8800 --MultiKernelManager.default_kernel_name=bash
```

- Customize linux prompt
```
cat ~/.bashrc
echo 'export PS1="\e[0;31m\e[50m\u@\h\n\w \e[m\n$ "'   >> ~/.bashrc
cat ~/.bashrc
exit
```

- Setup R Studio
```
sudo apt -y update
sudo apt-get -y install r-base
sudo apt-get  -y install gdebi-core
wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-2021.09.0-351-amd64.deb
sudo gdebi rstudio-server-2021.09.0-351-amd64.deb
sudo systemctl status rstudio-server.service
sudo systemctl start rstudio-server.service
curl http://ec2-54-201-159-31.us-w:8787
```
