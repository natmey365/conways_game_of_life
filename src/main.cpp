#include "grid.h"

int main(){
	Grid grid(8,8);
	grid.setCell(1, 1, true);
	if (grid.testCell(1, 1) == true)
		std::cout << "works!\n";
	else
		std::cout << "doesnt wor! :( \n";
}
