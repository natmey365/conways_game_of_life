// Header file defining the Grid class

#ifndef GRID_H
#define GRID_H

#include <iostream>
#include "cell.h"

class Grid
{
	public:
		Grid(int i, int j);
		void run();
		void display();

	private:
		int size_x;
		int size y;
		Cell **grid;

		void growGrid();
};

#endif
