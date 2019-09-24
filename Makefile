.PHONY: compare
compare: ## Compare two repositories file-to-file folder-to-folder
	./compare

.PHONY: diffs
diffs: ## Retrieve diff patches from mainstream pre-processed and prepared to be applied to the clone
	./diffs -p multi -u

.PHONY: review
review: ## Review the prepared patches prior to their application
	./review -r all

.PHONY: status
status: ## Check the status of the clone repository if it falls behind the mainstream
	./status -v -u

.PHONY: help
help: ## Show usage help
	@echo "Valid targets:"
	@grep -E '^[a-zA-Z_-]+:.?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'
