// C++ file defining the Grid class

#include <iostream>
#include "grid.h"

Grid::Grid(int i, int j) : size_x(i), size_y(j)
{
	grid = new Cell*[i];
	for (int k=0; k < i; k++)
		grid[k] = new Cell[j];
}

void Grid::setCell(int i, int j, bool boolean)
{
	if ()
}

void Grid::run()
{
	//create futureGrid
	Grid futureGrid = new Cell*[size_x];
	for (int k=0; k < size_x; k++)
		futureGrid[k] = new Cell[size_y];

	// Check each cell in currentGrid
	// update cell status' in futureGrid
	// replace currentGrid with futureGrid
}

void  Grid::display();
{

}
