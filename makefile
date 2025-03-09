
.DEFAULT_GOAL := help



.PHONY: help setup-env kind-cluster-create kind-cluster-delete build dev clean




help: ## Display this help message.
	@echo "Available tasks:"
	@grep -E '^[a-zA-Z0-9_-]+:.*?## ' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  %-25s %s\n", $$1, $$2}'





setup-env: ## Set up the development environment.
	@echo "Setting up environment..."
	@echo "Must have dotnet, kind, skaffold, and kubectl installed."

	@echo "Setting executable permissions on local bin..."
	@chmod +x scripts/*



kind-cluster-create: ## Create a kind cluster.
	@echo "Creating kind cluster..."
	@scripts/kind-cluster-create.sh


kind-cluster-delete: ## Delete the kind cluster.
	@kind delete cluster --name kind



build: ## Build the project.
	make setup-env
	make kind-cluster-create


dev: ## Run the development environment.
	@skaffold dev


clean: ## Clean up the development environment.
	make kind-cluster-delete
	@docker rm kind-registry -f || true
