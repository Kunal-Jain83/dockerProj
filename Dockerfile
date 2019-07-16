FROM ubuntu:latest
LABEL MAINTAINER all-imag@mail.com
arg image_variable="local"
env ora_port=2121
RUN mkdir /code

copy sample.sh /code/sample.sh
run chmod +x /code/sample.sh
run echo "Building an image..."

workdir /code
cmd sh /code/sample.sh
