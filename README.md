# kubectl

![docker-publish](https://github.com/atrakic/kubectl/workflows/docker-publish/badge.svg)

### Usage

```sh
$ docker run --rm -it xomodo/kubectl version --client


$ alias k='docker run --rm -it -v "$PWD":/app -w /app -v "$HOME/.kube:/root/.kube/:ro" --network host xomodo/kubectl:latest'

$ k cluster-info

```
