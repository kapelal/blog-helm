REPLICATOR_VERSION=0.2.0
REPLICATOR_TGZ_NAME=replicator-chart-$(REPLICATOR_VERSION).tgz

ingress-controller-com:
	@helm-helper command -f ./ingress-controller.yaml | sh

blog:
	@helm-helper command -f ./hugo.yaml | sh

cert-manager:
	@helm-helper command -f ./cert-manager.yaml | sh

tls:
	@helm-helper command -f ./tls.yaml | sh

clear-replicator:
	@rm replicator -rf $(REPLICATOR_TGZ_NAME)
	@wget https://github.com/rodesousa/replicator/releases/download/$(REPLICATOR_VERSION)/$(REPLICATOR_TGZ_NAME) -q
	@tar -xf $(REPLICATOR_TGZ_NAME)

replicator: clear-replicator
	@helm-helper command -f ./replicator.yaml | sh
