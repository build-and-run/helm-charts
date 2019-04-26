# helm-charts

build-and-run helm charts repository

## usage

### stable repo

```sh
helm repo add build-and-run https://charts.build-and-run.fr/stable
helm repo update
```

### incubator repo

```sh
helm repo add build-and-run https://charts.build-and-run.fr/incubator
helm repo update
```

## Adding charts

- Add/Edit you chart in `src/stable` or `src/incubator` directory
- Run `make package-stable my-chart` or `make package-incubator my-chart`
- Run `make index`

# Contributing

## Testing localy

```sh
helm serve --repo-path docs/stable --url https://charts.build-and-run.fr/stable
helm repo add test-bar-stable http://127.0.0.1:8879/
```

or

```sh
helm serve --repo-path charts/incubator --url https://build-and-run.github.io/helm-charts/charts/incubator
helm repo add test-bar-incubator http://127.0.0.1:8879/
```
