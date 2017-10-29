# Generic project Makefile
MAKETOOLS	:=	./maketools

# project build tools needed
REQUIRED_TOOLS := python3 g++
CXX	:= g++
PY	:= python3

# include needed makefile components
include $(MAKETOOLS)/check-tools.mak
include $(MAKETOOLS)/build-cpp.mak
include $(MAKETOOLS)/build-help.mak
include $(MAKETOOLS)/create-dirs.mak
include $(MAKETOOLS)/version-tools.mak
# build docs for this project (python3 required)
DOCS	:= docs
include $(MAKETOOLS)/create-venv.mak
include $(MAKETOOLS)/sphinx-docs.mak

