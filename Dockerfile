FROM ubuntu

RUN printf "Setting up Ubuntu CI"

RUN apt update >> /dev/null
RUN apt install sudo -y
RUN apt install gcc -y >> /dev/null
RUN apt install make -y

COPY ./ /tester

WORKDIR /tester

RUN make

RUN ./hello

