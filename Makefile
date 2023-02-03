kapply = kubectl apply -f yamlfiles/
kdelete = kubectl delete -f yamlfiles/

run:
	@$(kapply)back-service.yaml
	@$(kapply)front-service.yaml
	@$(kapply)back-deployment.yaml
	@$(kapply)front-deployment.yaml
	@$(kapply)data-deployment.yaml
	@$(kapply)data-script-job.yaml
	@$(kapply)myapp-networkpolicy.yaml
	@$(kapply)secret.yaml
	@$(kapply)storageClass.yaml
	@$(kapply)data-pvc.yaml

fill-db:
	@$(kapply)data-service.yaml

stop:
	@$(kdelete)back-service.yaml
	@$(kdelete)front-service.yaml
	@$(kdelete)data-service.yaml
	@$(kdelete)back-deployment.yaml
	@$(kdelete)front-deployment.yaml
	@$(kdelete)data-deployment.yaml
	@$(kdelete)data-script-job.yaml
	@$(kdelete)myapp-networkpolicy.yaml
	@$(kdelete)secret.yaml
clean:
	@$(kdelete)data-pvc.yaml