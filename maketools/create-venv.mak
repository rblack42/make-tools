# build python3 virtual environment

.PHONY: venv
# target: venv - build python3 virtual env
venv:
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
