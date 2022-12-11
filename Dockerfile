FROM alpine:latest

# set build args
ARG KUBECTL_ARCH=linux/amd64

# install deps and use latest curl release source
RUN apk update
RUN apk upgrade
RUN apk add --no-cache --virtual ca-certificates curl && \
    curl '-#' -fLo /usr/local/bin/kubectl "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/${KUBECTL_ARCH}/kubectl" && \
    chmod +x /usr/local/bin/kubectl && \
    apk del --no-cache curl ca-certificates && \
    rm -fr /var/cache/apk/*

RUN addgroup -S kubectl_group && adduser -S kubectl_user -G kubectl_group

USER kubectl_user
COPY --chmod=0755 "entrypoint.sh" "/entrypoint.sh"
CMD ["kubectl"]
ENTRYPOINT ["/entrypoint.sh"]
