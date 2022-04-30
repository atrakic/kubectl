FROM alpine:latest

ARG KUBECTL_ARCH=linux/amd64

RUN apk add --no-cache --virtual ca-certificates curl && \
    curl '-#' -fLo /usr/local/bin/kubectl "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/${KUBECTL_ARCH}/kubectl" && \
    chmod +x /usr/local/bin/kubectl && \
    apk del --no-cache curl ca-certificates

ENTRYPOINT ["/usr/local/bin/kubectl"]
