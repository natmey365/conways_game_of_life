// C++ file defining the Cell class 

#include "cell.h"

Cell::Cell() : is_alive(false) {}

Cell::Cell(bool is_alive_) : is_alive(is_alive_) {}

void Cell::setAlive()
{
	is_alive = true;
}

void Cell::setDead()
{
	is_alive = false;
}

void Cell::setIsAlive(bool is_alive_)
{
	is_alive = is_alive_;
}

bool Cell::getIsAlive()
{
	return is_alive;
}
