



run:
	@kubectl apply -f yamlfiles/back-service.yaml
	@kubectl apply -f yamlfiles/front-service.yaml
	@kubectl apply -f yamlfiles/back-deployment.yaml
	@kubectl apply -f yamlfiles/front-deployment.yaml
	@kubectl apply -f yamlfiles/data-deployment.yaml
	@kubectl apply -f yamlfiles/data-script-job.yaml
	@kubectl apply -f yamlfiles/myapp-networkpolicy.yaml
	@kubectl apply -f yamlfiles/secret.yaml
	@kubectl apply -f yamlfiles/storageClass.yaml
	@kubectl apply -f yamlfiles/data-pvc.yaml

fill-db:
	@kubectl apply -f yamlfiles/data-service.yaml

stop:
	@kubectl delete -f yamlfiles/back-service.yaml
	@kubectl delete -f yamlfiles/front-service.yaml
	@kubectl delete -f yamlfiles/data-service.yaml
	@kubectl delete -f yamlfiles/back-deployment.yaml
	@kubectl delete -f yamlfiles/front-deployment.yaml
	@kubectl delete -f yamlfiles/data-deployment.yaml
	@kubectl delete -f yamlfiles/data-script-job.yaml
	@kubectl delete -f yamlfiles/myapp-networkpolicy.yaml
	@kubectl delete -f yamlfiles/secret.yam
clean:
	@kubectl delete -f yamlfiles/data-pvc.yaml