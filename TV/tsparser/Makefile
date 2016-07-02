export EXECUTABLE:=pgsearch
export LIBS:=pthread

CFLAGS:=-g -Wall -O0
CXXFLAGS:=$(CFLAGS) 

RM-F:=rm -f 

SOURCE:=$(wildcard *.c) $(wildcard *.cc) 
OBJS:=$(patsubst %.c,%.o,$(patsubst %.cc,%.o,$(SOURCE))) 
DEPS:=$(patsubst %.o,%.d,$(OBJS)) 
MISSING_DEPS:=$(filter-out $(wildcard $(DEPS)),$(DEPS)) 
MISSING_DEPS_SOURCES:=$(wildcard $(patsubst %.d,%.c,$(MISSING_DEPS)) $(patsubst %.d,%.cc,$(MISSING_DEPS))) 
CPPFLAGS+=-MD 

.PHONY:everything deps objs clean veryclean rebuild 

everything:$(EXECUTABLE) 

deps:$(DEPS) 

objs:$(OBJS) 

clean: 
	@$(RM-F) *.o 
	@$(RM-F) *.d 
	@$(RM-F) $(EXECUTABLE)

veryclean:clean 
	@$(RM-F) $(EXECUTABLE) 

rebuild:veryclean everything 

ifneq ($(MISSING_DEPS),) 
$(MISSING_DEPS): 
	@$(RM-F) $(patsubst¡¡%.d,%.o,$@) 
endif 

-include $(DEPS) 

$(EXECUTABLE):$(OBJS) 
	gcc $(SOURCE) $(CXXFLAGS) -o $(EXECUTABLE) $(addprefix -l,$(LIBS)) 
