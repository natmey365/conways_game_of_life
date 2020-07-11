EXECUTABLE   := main
SRC_DIR      := src
INC_DIR      := inc
OBJ_DIR      := obj
SRC_FILES    := $(wildcard $(SRC_DIR)/*.cpp)
OBJ_FILES    := $(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(SRC_FILES))
LDFLAGS      :=
CPPFLAGS     := -I$(INC_DIR)
CXXFLAGS     := -Wall

.PHONY: clean

$(EXECUTABLE): $(OBJ_FILES)
	g++ $(LDFLAGS) -o $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp $(INC_DIR)/%.h
	@mkdir -p obj
	g++ $(CPPFLAGS) $(CXXFLAGS) -c -o $@ $<

clean:
	rm -rf $(OBJ_DIR)  $(EXECUTABLE)
