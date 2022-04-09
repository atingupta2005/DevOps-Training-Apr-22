cd
sudo groupadd docker
sudo usermod -aG docker $USER
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

docker version

# Creating and Using Containers
## Starting a Nginx Web Server
docker container run --publish 80:80 --detach --name nginx-$USER nginx
curl localhost
docker container ls
docker container stop nginx-$USER
docker container ls -a
docker container start nginx-$USER

docker container ls -a

## What's Going On In Containers: CLI Process Monitoring

docker container ls

docker container top nginx-$USER

docker container inspect nginx-$USER

docker container stats

## Getting a Shell Inside Containers: No Need for SSH

docker container exec -it nginx-$USER bash
# exit from container
exit

docker pull alpine

docker image ls

ls -al

docker ps

git clone https://github.com/atingupta2005/docker-file-node-app

cd docker-file-node-app

docker build -t $USER-hello-world .

docker images

port=$(echo $USER | cut -c2-6)

docker run -p $port:8081 --name $USER-node-hello --detach $USER-hello-world

docker ps

docker logs -f $USER-node-hello

curl localhost:$port
