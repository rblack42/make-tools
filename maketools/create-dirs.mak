# build standard project directories

# list the project directory names
SRC	:=	src
LIB	:=	lib
INC	:=	include
TST	:= 	tests
DOC	:=	docs
BLD	:=	_build

DIRS	:= $(SRC) $(LIB) $(TST) $(INC) \
		$(BLD)/$(SRC) $(BLD)/$(LIB) $(BLD)/$(TST)

.PHONY:	projdirs
# target: projdirs - create standard project directory structure
projdirs:	$(DIRS)

$(DIRS):
	mkdir -p $@

