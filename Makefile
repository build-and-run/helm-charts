SHELL=/bin/bash

args = `arg="$(filter-out $@,$(MAKECMDGOALS))" && echo $${arg:-${1}}`

%:
	@:

# Indexrule : index both stable and incubator directory
index: index-stable index-incubator

index-stable:
	helm repo index --url https://charts.build-and-run.fr/stable docs/stable

index-incubator:
	helm repo index --url https://charts.build-and-run.fr/incubator docs/incubator

package-incubator:
	@echo "Checking incubator directory for chart $(call args)"
	@if [ ! -d "src/incubator/$(call args)" ]; then echo "Missing chart $(call args) ..."; false; fi
	@helm package -d docs/incubator/ src/incubator/$(call args)

package-stable:
	@echo "Checking stable directory for chart $(call args)"
	@if [ ! -d "src/stable/$(call args)" ]; then echo "Missing chart $(call args) ..."; false; fi
	@helm package -d docs/stable/ src/stable/$(call args)

