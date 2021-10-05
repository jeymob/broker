FROM golang:1.17

ADD . /go/src/github.com/jeymob/broker

RUN go install git@github.com:jeymob/broker.git

ENTRYPOINT ["/go/bin/grpc_server"]

EXPOSE 8080