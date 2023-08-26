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

https://www.btkakademi.gov.tr/portal/course/player/deliver/docker-temelleri-21907
