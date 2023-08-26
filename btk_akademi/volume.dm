birden fazla containerlar kullanabilir
docker image guncelleme olsa dahi veri silinmez
istedgimiz zaman tasiyabilri ve yedekeleme yapabilriz
container boyutunu artirmaz

dcoer info ile bilgielri alairiz
docker volume create --name test1

docker run -it --name yusuf -v test1:/www/website centos:7 bash    direk test1 yazarsak root altinda eslerit
docker run -it --name ilhan -v test1:/www/website centos:7 bash
# bu 2 container da  test1 local volumunde dosyalar  baglandigi icin website altinda dosyalar da ayni  olur
ctrl p q arkada  caslir contianer  ama icnden cikariz


docker inspect test1 ile bu test1 volume u hakkinda bilgi aliriz.


docker run -d -p 81:81 --name yusuff -v test1:/usr/share/nginx/html  -v test1:/var/log/nginx nginx
# buradaki nginx log direkrtroy test1 ilebirlestirdigizmi icin yerelde dosyalari gorebeliriz. container a bagli kalamadan container liglarini anlik gorebilriz.


docker  volume  create --opt type=nfs 0=addr=192.168.1.2,  rw,nfsserver4  --opt device=:/home/nfsshare nfs-volume


## network
ayni ag uzerinde containerlar  birbirleri  ile haberlesirler.
coklu netwrok  trafigini  bolumlere  ayrilmasi saglar.
contaienrlar  birden fazla netwroke bagli olurlar.
docker netwrok ls - netwrokwlri  gorulur
docker netwrok bridge -- bridge netwrok hakkinda ayrintili bilgili
docker netwrok host  - host netwrok taypi  hakkinda bilgiverir

docker run centos  /usr/sbin/ip route    --ip   adresi ile  ilgili bilgielr veiri
docker netwrok create network_name
docker netwrok  ls
docker netwrok test isnpect- olusrturulan netwrok hakkinda  bilgi verir
container e atamak container run  -it --net testnetwrok centos  bash .. .bu testnetwrok networkune olustuurr

silmek
docker  netwrok   rm  netwrok_name
docker netwrok inspect test_network hangileri bagli  gorebilriz.  kullaniyorsa silemeyiz.
docker netwrok prune.  kullanilmayan  butun netwrokwlri siler


## docker compose
docker compose --version
docker compose build -- servisleri build eder.
docker compose up ---direk build eder.

# docker compose yaml file
version: 3.0
services:
    nginx-service:
        build: Website
        depends_on:
        - ruby-service

    ruby-service:
        build: WebApp
        depends_on:
        - redis-service
    redis-service:
        image: redis

https://www.btkakademi.gov.tr/portal/course/player/deliver/docker-temelleri-21907
