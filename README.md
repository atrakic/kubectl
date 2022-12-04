# kubectl

[![Docker](https://github.com/atrakic/kubectl/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/atrakic/kubectl/actions/workflows/docker-publish.yml)

### Example usage

```sh
$ docker run --rm -it ghcr.io/atrakic/kubectl:latest version --client

$ alias k='docker run --rm -it -v "$PWD":/app -w /app -v "$HOME/.kube:/root/.kube/:ro" --network host ghcr.io/atrakic/kubectl:latest'

$ k cluster-info
```

## License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
