///// @description gun position

image_xscale = Player.image_xscale;

// Update x and y position to chase the players body
x = Player.x;
y = Player.y+4;
//x = lerp(x, Player.x + Player.hspeed, .5);
//y = lerp(y, Player.y + 4, .5);

// Execute shoot code
PlayerGunShoot();
