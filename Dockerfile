FROM alpine:latest

ARG K8S_VERSION=v1.22.0
ARG KUBECTL_ARCH=linux/amd64

RUN apk add --no-cache --update ca-certificates curl && \
    curl '-#' -fLo /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/${K8S_VERSION}/bin/${KUBECTL_ARCH}/kubectl && \ 
    chmod +x /usr/local/bin/kubectl && \
    apk del curl

ENTRYPOINT ["/usr/local/bin/kubectl"]
