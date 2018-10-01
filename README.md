## helm

Dépôt qui stock les charts Helm et les valeurs pour le blog [kapelal.io](kapelal.io)

---

## Utilisation

Un [Makefile](./Makefile) qui permet de déployer les charts

https://github.com/kapelal/helm-helper est un outil qui permet de simplifier la commande Helm

```
helm-helper command -f ./ingress-controller.yaml | kubectl -f
```
