# crete aimple help target

.PHONY: help
# target: help - Display all callable targets
help:
	@echo "Help - available targets:"
	@echo
	@egrep "^#\s*target\s*:\s*" $(MAKETOOLS)/*.mak \
		| sed -e "s/^.*://"
	@echo
