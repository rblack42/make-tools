# build rules for Sphinx documentation

VENV	:= python3 -m venv _venv
SPHINX	:= sphinx-build

.PHONY:	install
# target: install - build sphinx documentation project
install:	$(DOCS) venv activate
	cd docs && cp ../files/requirements.txt . && \
	cp ../files/index.rst . && \
	cp ../files/webbrowser ../_venv/bin && \
	mkdir -p _static && cp ../files/conf.py . && \
 	../_venv/bin/pip install -Ur requirements.txt

$(DOCS):
	if [ -d $(DOCS) ]; then \
		@echo building venv; \
	else \
		mkdir $(DOCS); \
	fi

.PHONY:	activate
activate:	
	bash _venv/bin/activate

.PHONY: html
# target: html - build sphinx html files
html:	activate
	cd $(DOCS) && \
	$(SPHINX) -b html -d ../_build/doctrees . ../_build/html

.PHONY: view
# target: view - view generated HTML doc pages
view:	activate html
	cd $(DOCS) && \
	../_venv/bin/webbrowser


