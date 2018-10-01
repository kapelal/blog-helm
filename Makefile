ingress-controller-com:
	@helm-helper command -f ./ingress-controller.yaml | kubectl -f

blog:
	@helm upgrade --install \
		blog ./hugo \
		--namespace blog \
		--values ./hugo.yaml
