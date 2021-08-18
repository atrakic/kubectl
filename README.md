# kubectl

[![Docker](https://github.com/atrakic/kubectl/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/atrakic/kubectl/actions/workflows/docker-publish.yml)

### Usage

```sh
$ docker run --rm -it xomodo/kubectl version --client


$ alias k='docker run --rm -it -v "$PWD":/app -w /app -v "$HOME/.kube:/root/.kube/:ro" --network host xomodo/kubectl:latest'

$ k cluster-info

```
