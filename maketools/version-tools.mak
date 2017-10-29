# version support tools

.PHONY:	version
# target: version - print current project version
version:
	@if ! test -f .version;  then \
		echo $($(cat \.version)); \
	else \
		echo "version=0.0.0" > .version; \
	fi

