///// @description gun position

image_xscale = Player.image_xscale;

// Update x and y position to chase the players body
if (Player.state = crouch_state)
{
	x = Player.x;
	y = Player.y+6;
}else
{
	x = Player.x;
	y = Player.y;
}
//x = lerp(x, Player.x + Player.hspeed, .5);
//y = lerp(y, Player.y + 4, .5);

// Execute shoot code
PlayerGunShoot();
