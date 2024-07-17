# syntax=docker/dockerfile:1

ARG VERSION=3.12.4

###
FROM alpine:3.20 AS builder
RUN apk add --no-cache bash

COPY run README.md /egress/

CMD [ "ls", "-l", "/egress" ]
