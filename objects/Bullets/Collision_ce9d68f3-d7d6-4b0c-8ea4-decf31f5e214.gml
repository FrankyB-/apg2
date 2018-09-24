/// @description Hit enemy
with (other)
{
	Ehp -= 1;
	//flash = 3;
	hitfrom = other.direction;
}
instance_destroy();

