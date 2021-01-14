#======================================================
# Files and directories
#======================================================
LIB          := game_of_life.a
SRC_DIR      := src
INC_DIR      := inc
TEST_DIR     := test
OBJ_DIR      := obj

SRC_FILES    := $(wildcard $(SRC_DIR)/*.cpp)
INC_FILES    := $(wildcard $(INC_DIR)/*.h)
OBJS         := $(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(SRC_FILES))

#======================================================
# Compiler, Archiver, and flags
#======================================================
CPP            := g++
COMPILE_FLAGS  := -Wall -I$(INC_DIR)
AR             := ar rcs
AR_FLAGS       :=

#======================================================
# Targets
#======================================================
.PHONY: clean test

all: $(LIB)

#=========
# Library
#=========
lib: $(LIB)
game_of_life: $(LIB)
$(LIB): lib_deps lib_objs
	@echo "============================================="; \
	 echo "= Building $(LIB)               ="; \
	 echo "============================================="
	 $(AR) $@ $(OBJS)

lib_deps:

$(OBJ_DIR)/%.o: src/%.cpp inc/%.h | $(OBJ_DIR)
	$(CPP) $(COMPILE_FLAGS) -c -o $@ $<

$(OBJ_DIR):
	mkdir -p $@

lib_objs:
	@echo "============================================="; \
	 echo "= Compiling $(LIB) objects      ="; \
	 echo "============================================="
	$(MAKE) $(OBJS)



$(EXECUTABLE): $(OBJ_FILES)
	g++ $(LDFLAGS) -o $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp $(INC_DIR)/%.h
	@mkdir -p obj
	g++ $(CPPFLAGS) $(CXXFLAGS) -c -o $@ $<

clean:
	rm -rf $(OBJ_DIR)  $(EXECUTABLE)
