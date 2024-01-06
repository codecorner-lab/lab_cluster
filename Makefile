init-backend:
	terraform init
		
lint:
	tflint

format:
	terraform fmt

validate:
	terraform validate

plan:
	terraform plan -var-file tfvars

auto-apply:
	terraform apply -auto-approve

auto-destroy:
	terraform destroy -auto-approve

all-plan: init-backend lint format validate plan