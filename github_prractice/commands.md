## TASK 0
sudo docker image rm 4e5021d210f6   - delete the image
docker images - shows the images
docker run -i ubuntu:latest bash
docker run -t ubuntu:latest bash

## TASK 1
## When you combine -i and -t, you get a proper terminal like experience
 run : Run a command in a new container
# -i : interactively
# -t : attached to your terminal
# ubuntu : image we will be downloading
# /bin/bash : the command that will run inside the container started with ubuntu image
docker run -i -t ubuntu /bin/bash

## TASK 1
docker ps          # To show all running containers
docker ps -a       # To show all containers including stopped ones
docker rm  unruffled_margulis    # Remove the container
# Docker starts the container and executes /bin/bash. Because the container is running interactively and attached to your terminal (due to the -i and -t flags), you can provide input using your keyboard while the output is logged to your terminal.

## TASK 2
docker run -d -p 80:80 nginx service nginx start
docker run --rm -d -p 80:80 nginx service nginx start  #The container also exited after being stopped
## in detach mode, bir konteyneri başlattığınızda, işlemi terminale bağlı olmadan, arka planda çalışacak şekilde ayarlarsınız.
docker run -d ubuntu sleep 100  100 saniye kalir sonra silinir.
Foreground Mode

In foreground mode (the default when -d is not specified), docker run can start the process in the container and attach the console to the process’s standard input, output, and standard error

For interactive processes (like a shell), you must use -i -t together in order to allocate a tty for the container process ----docker run -it ubuntu  /bin/bash


## TASK 3
RUN  (sor)
docker run -d -p 80:80 docker/getting-started

## TASK 4
docker run --rm --name=a1 ubuntu /bin/bash
docker run --rm --name=a2 ubuntu /bin/bash

docker run --rm --name=a2 --pid=container:a1 -it ubuntu /bin/bash  --- bu container 2 ye 1 i baglar ondaki processleri ps-ef ile gorebilriiz
## TASK 5
docker run--name test -it debian  --direk debian container icersiine girer

ocker run --cidfile /tmp/docker_test.cid ubuntu echo "test"    --- cat /tmp/docker_test.cid
c2683f80d7bf613f4004911904a908377a43fb1ab556988f3aa9992647cd184a--- bu dosya ya docker id yi yazdi.

## TASK 6
# Expose Port
docker run --rm -d -p 8081:80 nginx nginx -g 'daemon off;'  --- bu  nginx i 8081 local  hosttan basar
curl localhost:8081 -I -- bu komut ile konsoldan da gorebilriz
curl  localhost:80801 -I


##  TASK 7
# giving root rights when connecting to the container
docker run -it --privileged ubuntu bash  -- buradaki --privileged root yetksii veriyor cantainera baglandigi zaman

# set the working directory
docker  run -w /path/to/dir -it pwd


veya
docker run --rm -v /tmp/test:/foo -w /foo -i -t ubuntu bash  -- bunla container localdeki directoriye baglandigi icin container buranin altinda ne oldugunu gorebiliyor.
docker run -t -i -w /foo --mount type=bind,src=/tmp/test,dst=/foo busybox sh  buda aynisi birinde olusturaln dosya local yada container de gorulur-- sporuce yazan direktory ile containerr direktorisi eslestiriliyor. birinde dosdya olusturunca yada silince digerinde de aynisis oluyor.


## TASK 8
# memory limit
docker run --rm -it --memory="2g" ubuntu
docker stats ile limitin 2 g oldugunu goruruz.

# Connect to network
# Let's create a nework. Connect two containers a1 and a2 to the same network. Then we should be able to ping a2 from a1
docker network create netwrok_name
docker netwrok ls ile gorebilriz
docker run -it --name=a1 --netwrok=yusuf busybox
docker run -it --name=a2 --netwrok=yusuf busybox
bu 2 si birbirine ping atabilirler ping ip adresi yada ping a1 diyerek


Attach to stdout
docker  run -a stdout --rm --name ubuntu  ubuntu ls var
# bu komut var altindakileri listeler


## TASK 9
# Once you are attached to a container using docker attach
- To stop a container, use CTRL-c. This key sequence sends SIGKILL to the container.
- If the container was run with -i and -t, you can detach from a container and leave it running using the CTRL-p CTRL-q key sequence.

docker run -d --name yusuf ubuntu /usr/bin/top -b

## TASK 10



https://github.com/codeaprendiz/learn-devops/blob/main/home/containers/docker/taskset_docker_containers/task_004_docker_run__pid_setting_and_choosing_image_with_tag/ReadMe.mds
