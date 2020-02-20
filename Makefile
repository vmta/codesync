.PHONY: compare
compare: ## Compare two repositories file-to-file folder-to-folder
	@./compare

.PHONY: diffs
diffs: ## Retrieve diff patches from mainstream pre-processed and prepared to be applied to the clone
	@./diffs -p multi -u

.PHONY: review
review: ## Review the prepared patches prior to their application
	@./review -r all

.PHONY: status
status: ## Check the status of the clone repository if it falls behind the mainstream
	@./status -v -u

.PHONY: sync
sync: ## Synchronize code (nothing is committed yet)
	@./sync -b master

.PHONY: sync-all
sync-all: ## Synchronize code, commit and push committed changes to remote
	@./sync -b master --commit --push || true

.PHONY: sync-commit
sync-commit: ## Synchronize code and commit
	@./sync -b master --commit || true

.PHONY: sync-push
sync-push: ## Push synchronized and committed code
	@./sync -b master --push || true

.PHONY: help
help: ## Show usage help
	@echo "Valid targets:"
	@grep -E '^[a-zA-Z_-]+:.?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'
