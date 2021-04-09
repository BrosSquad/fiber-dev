FROM golang:1.16-alpine

ENV GOPATH=/go
ENV GO111MODULE on
ENV PATH="${GOPATH}/bin:${PATH}"

RUN apk add make gcc git libc-dev inotify-tools bash

RUN go get -u github.com/gofiber/cli/fiber \
    && wget https://taskfile.dev/install.sh \
    && sh install.sh -b /usr/bin && rm install.sh \
    && go get github.com/go-delve/delve/cmd/dlv

COPY . /usr/bin/
