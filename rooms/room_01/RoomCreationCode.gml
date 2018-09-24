var _x = instance_exists(Door).x;
var _y = instance_exists(Door).y;

Player.x = _x;
Player.y = _y;
Player.state = move_state;
if (PlayerStats.InsideRoom)
{
	PlayerStats.InsideRoom = false;
	Player.state = move_state;
}