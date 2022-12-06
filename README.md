# kubectl

[![docker-publish](https://github.com/atrakic/kubectl/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/atrakic/kubectl/actions/workflows/docker-publish.yml)
[![license](https://img.shields.io/github/license/atrakic/kubectl.svg)](https://github.com/atrakic/kubectl/blob/master/LICENSE)
[![release](https://img.shields.io/github/release/atrakic/kubectl/all.svg)](https://github.com/atrakic/kubectl/releases)

### Example usage

- Get version
```sh
docker run --rm -it ghcr.io/atrakic/kubectl:latest version --client
```

- Setup in current shell
```sh
alias k='docker run --rm -it -v "$PWD":/app -w /app -v "$HOME/.kube:/root/.kube/:ro" --network host ghcr.io/atrakic/kubectl:latest'
k cluster-info
```

- Download binary from latest image:

```sh
IMAGE_NAME=ghcr.io/atrakic/kubectl:latest
docker create --name dummy $IMAGE_NAME
docker cp dummy:/usr/local/bin/kubectl .
kubectl version --client
docker rm -f dummy
```

## License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
