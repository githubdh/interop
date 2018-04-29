FROM ubuntu:bionic
 COPY helloworld.c /
 RUN apt-get update 
 RUN apt-get install -y g++
 RUN /usr/bin/g++ -o helloworld helloworld.c
 RUN ./helloworld
