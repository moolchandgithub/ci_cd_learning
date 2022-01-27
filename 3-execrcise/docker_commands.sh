# prefix commands with sudo if user is not in docker group
# build docker image
docker build -t demoapp .

# check docker image
docker images | grep demoapp

# run docker container
docker run -p 8888:5000 --name myapp demoapp 
