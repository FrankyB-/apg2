/// @description 
if (Door_Close)
{
	image_index = 0;
}

if (Door_open)
{
	image_index = 1;
}

if (Door_Locked)
{
}

if (Door_Energy == Door_MaxEnergy)
{
	Door_open = true;
}

