# kubectl

[![docker-publish](https://github.com/atrakic/kubectl/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/atrakic/kubectl/actions/workflows/docker-publish.yml)
[![license](https://img.shields.io/github/license/atrakic/kubectl.svg)](https://github.com/atrakic/kubectl/blob/master/LICENSE)
[![release](https://img.shields.io/github/release/atrakic/kubectl/all.svg)](https://github.com/atrakic/kubectl/releases)

### Example usage

- Get version
```sh
docker run --rm -it ghcr.io/atrakic/kubectl:latest version --client
```

- Use it as client in current shell
```sh
alias k='docker run --rm -it -v "$PWD":/app -w /app -v "$HOME/.kube:/root/.kube/:ro" --network host ghcr.io/atrakic/kubectl:latest'
k cluster-info
```

- Inside k8s cluster (if RBAC settings allows):
```sh
SERVICE=kubernetes
kubectl run -it --rm --image=ghcr.io/atrakic/kubectl:latest --restart=Never kube-test -- \
  get service $SERVICE --output=jsonpath='{.spec.clusterIPs[0]}'
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
