# build standard C++ application
# 	Load build-projdirs.mak  before this file
USRCS	:=	$(wildcard $(SRC)/*.cpp)
UOBJS	:	$(USRCS:.cpp=.o)

LSRCS	:= $(wildcard $(LIB)/*.cpp)
LOBJS	:= $(LSRCS:.cpp=.o)

CPPFLAGS	:=	-std=c++11 -I $(INC)

UAPP	:=	$(PROJNAME)

.PHONY:	app
# target: app - build user application
app:	$(UAPP)

$(UAPP):	:= $(UOBJS) $(LOBJS)
	$(CXX) -o $@ $^ $(CPPFLAGS)

.PHONY:	uclean
# target uclean - remove application attifacts
uclean:
	rm -rf $(UOBJS) $(LOBJS)

$(BLD)/%.o:	%.cpp
	$(CXX) -c $(CPPFLAGS) $< -o  $@ -MMD -MP


