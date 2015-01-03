FROM ubuntu
RUN apt-get update
RUN apt-get -y install curl
RUN curl -L  https://github.com/coreos/etcd/releases/download/v2.0.0-rc.1/etcd-v2.0.0-rc.1-linux-amd64.tar.gz -o /etcd-v2.0.0-rc.1-linux-amd64.tar.gz
WORKDIR /
RUN tar xzvf etcd-v2.0.0-rc.1-linux-amd64.tar.gz
WORKDIR /etcd-v2.0.0-rc.1-linux-amd64
EXPOSE 4001 7001
CMD ["/etcd-v2.0.0-rc.1-linux-amd64/etcd"]

/
