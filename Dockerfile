FROM ubuntu:14.04
RUN apt-get update

RUN touch /opt/test.file
RUN echo "Hello world" >> /opt/test.file

