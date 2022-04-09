sudp apt -y update
sudo apt install -y virtualbox
sudo apt install -y vagrant
vagrant -v
mkdir vagrant-test
cd vagrant-test
vagrant init ubuntu/trusty64
ls
cat Vagrantfile
#nano vagrantfile
vagrant up
vagrant status
vagrant ssh
$ sudo apt-get install apache2 -y
$ sudo service apache2 start
$ sudo service apache2 status
$ curl localhost
$ ip route get 1.2.3.4 | awk '{print $7}'
$ curl 10.0.2.15
vagrant destroy
