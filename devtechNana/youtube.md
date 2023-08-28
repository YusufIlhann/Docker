
# video 1
genel olrak container dan bahsetti

# video 2
image is actual packege
container is when i  pull the image to local and run it it becomes container.

docker ps - you can see the working containers

docker run postgres ---it runs the container


# video 3
it shows hoe to install docker on wifferent OS and distribution

# video 4
container  is a running environment for IMAGE.
docker images -- -shows the images that you have
docker run redis
docker ps  ile  running i  gorebilriisn
docker run -d redis   id verir
docker stop id - -it  stiop the container
docker ps -a all the containers running or  not running
eger  image  yok ise docker run redis dersek hem indirir hem calsitirir.


# video 5
## docker  exec and docker  log
docker run -d  -p6000:6794
docker logs id ---show log of the  container
docker run -d -p6000:6794 --name redis1 redis
docer exec -it id sh ---connect to the  container inside
docker run whre  you cerate  a container from an image  --
docker start is about with container not images
docker start id -- restart the stopped container

# video 6
docker versus VM
os has 2 layers kernel   and aplication layyers -
docker images are smaller. faster.

## video 7
docker in real practice

## video 8
ayni docker netwrok de olan 2 ayri uygulama, servis birbirleri ile haberlsebilirler. it is isolated.

docekr  netwrok ls -- shows the netwrok available
docker netwrok create name -- creates a netwrok


after you download the mongo image,_
mongo icin --- docker run -p 27017:27017 -d -e MONGO_USERNAME=yusuf MONGO_PASSWORD=pass --name mongo_yusuf --net mongo_netwrok mongo    - you can spesifay username and passwork with -e enviranment  varibal demek, burada netwroku de kendi istedigimize aldik.
mogo express icin   docker run -d -p 8081:8081 -e ME_CONFIG_MONGODB_ADMINUSERNAME=yusuf -e ME_CONFIG_MONGODB_ADMINPASSWORD=Sd1234 --net mongo-yusuf --name mongo-expres -e ME_CONFIG_MONGODB_SERVER=mongodb mongo-express


bu videoda mongo ve mongo expres uygulamasi yapti.

# video 9
## docker-compse
komutlarin vir disya ya yazilip dosyadan yonetilmesi.
docker compose takes care of creating a common network. we dont need to spesify the netwrok for each.
docker-copmesu otomatik yukler docker i yuklerken

# video 10
## creating an image from our app
Dockerfile - it is a blueprint for building the image.
FROM node --install node
ENV - external olarak yapmak daha mantikli
RUN mkdir -p /home/app
COPY  ./home/app
CMD ["node", "server.js"]

### guzel bir alistirma yapti tekrar izlenebilir

## video 11
genel repositorye atmayi gosterdi. teorik bir video. iyi degildi.

# video 12
## docker volume
it is used for data persistence. without a volume, all the data gone when delete the container.
3 tur var
docker run -v   host makinada bir direktori belirlersin- host  file sistemi 1 tanesi
2. si docker belirledi bir tanesi spesifik bir yer anynimiy  volume
3. isae named volumes ---

# video 13
gneel olara teorik video verdi

# video 14
docker volume in practice

# video 15
docker versus kubernetes

# video 16
8 best practices
1. use official base image
2. latest version may be not good
3. use smaller image
4. use .dockerignore file
5. use  least privilage
6. scan your images for vulnerabilities


