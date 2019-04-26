index: index-stable index-incubator

index-stable:
	helm repo index --url https://charts.build-and-run.fr/stable docs/stable

index-incubator:
	helm repo index --url https://charts.build-and-run.fr/incubator docs/incubator
