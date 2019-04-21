index: index-stable index-incubator

index-stable:
	helm repo index --url https://build-and-run.github.io/helm-charts/charts/stable charts/stable

index-incubator:
	helm repo index --url https://build-and-run.github.io/helm-charts/charts/incubator charts/incubator
