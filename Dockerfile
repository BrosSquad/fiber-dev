FROM golang:1.15-alpine

ENV GOPATH=/go
ENV GO111MODULE on
ENV PATH="/go/bin:${PATH}"

RUN apk add make gcc 

RUN go get -u github.com/gofiber/cli/fiber \
    && wget https://taskfile.dev/install.sh \ 
    && sh install.sh -b /usr/bin
