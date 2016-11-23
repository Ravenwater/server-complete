FROM golang
MAINTAINER E. Theodore L. Omtzigt <raven@stillwater-sc.com>

ENV GOBIN $GOPATH/bin

ADD . /go/src/github.com/Ravenwater/server-complete
RUN go install /go/src/github.com/Ravenwater/server-complete/cmd/todo-list-server/main.go
WORKDIR /go/src/github.com/Ravenwater/server-complete
ENTRYPOINT /go/bin/main --port 8090

# serving HTTP of 8090
EXPOSE 8090