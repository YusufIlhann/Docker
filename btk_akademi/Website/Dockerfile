FROM ubuntu
RUN apt-get -y  update
RUN apt-get  -y upgrade
RUN apt-get install nano
RUN  mkdir /data
WORKDIR /data
RUN echo "yusuf" > test.txt
VOLUME /data
