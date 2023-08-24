# docker compoes
docker iamge build -f Dockerfile.ms -t initcron --- burada direk dockerfile dosyasini belirterek oradan yapiyor.
docker-compose ps
docker run -idt -p 3306:3306 -e MYSQL_USER=yusuf -e MYSQL_PASSWORD=yusuf -e MYSQL_DATABASE=yusuf mysql:5.7
link parametre si ile db ye baglayabilriz container i
docker-compse config komutu da var
ifconfig eth0  bu komuta calis


dockerfile ile entergere erme
dockerfile
dockercompose is a source to build images . lanch using compose- lanch configuration
build:
    context: ./
    dockerfile: Dockerfile


dockerfile is build configuration
