// Header file defining the Cell class

#ifndef CELL_H
#define CELL_H

#include <iostream>

class Cell
{
	public:
		Cell();
		Cell(bool is_alive_);
		void setAlive();
		void setDead();
		void setIsAlive(bool is_alive_);
		bool getIsAlive();

	private:
		bool is_alive;
};

#endif
