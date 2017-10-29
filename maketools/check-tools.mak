# check required tools exist ---------------------------------
REQUIRED_TOOLS := python3 g++ 

.PHONY: check
# target: check - check build tools are available
check:
	@echo "checking installed tools"
	$(foreach bin,$(REQUIRED_TOOLS),\
		$(if $(shell command -v $(bin) 2> /dev/null),\
		,$(error Please install `$(bin)`)))
	@echo "ok..."
