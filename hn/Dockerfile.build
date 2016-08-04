FROM golang:1.7-alpine
MAINTAINER Nathan LeClaire <nathan.leclaire@gmail.com>

RUN mkdir -p /go/src/github.com/nathanleclaire/hn
COPY . /go/src/github.com/nathanleclaire/hn
RUN go install github.com/nathanleclaire/hn

CMD ["cat", "/go/bin/hn"]
