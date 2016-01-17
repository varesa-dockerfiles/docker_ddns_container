FROM registry.esav.fi:5000/ruby
MAINTAINER Esa Varemo <esa@kuivanto.fi>

RUN yum install -y golang

RUN curl -sSL https://get.docker.com/ | sh

RUN git clone https://github.com/varesa/docker_ddns.git

WORKDIR /docker_ddns/

CMD ["ruby", "docker_ddns"]

VOLUME /etc/pki/dnssec-keys/
