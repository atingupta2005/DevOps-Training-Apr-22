mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose

cd
git clone https://github.com/atingupta2005/docker-compose-example-python.git
cd docker-compose-example-python
ll -al
cat docker-compose.yml
port=$(echo $USER | cut -c2-6)
echo $port
sed -i "s/80:/10$port:/g" docker-compose.yml
cat docker-compose.yml
docker compose version
docker compose build
docker compose images
docker compose ls
docker compose up -d
docker compose logs -f
curl localhost:10$port
docker compose ls
docker compose stop
docker compose ls -a
docker compose down
docker compose ls -a
docker compose start
