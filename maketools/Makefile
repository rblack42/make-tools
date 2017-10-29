# check required tools exist ---------------------------------
REQUIRED_TOOLS := python3 g++ 

.PHONY: check
check:
	@echo "checking installed tools"
	$(foreach bin,$(REQUIRED_TOOLS),\
		$(if $(shell command -v $(bin) 2> /dev/null),\
		,$(error Please install `$(bin)`)))
	@echo "ok..."

.PHONY: venv
venv: check
	@if [ -d "_venv" ]; then \
		echo "virtualenv exists"; \
	else \
		echo "creating _venv for python3"; \
		python3 -m venv _venv; \
	fi

test:
	@echo "test"
	@if [ -d "venv_" ]; then \
		echo "venv_ exisis"; \
	fi
