///hurt_state()
//Set Sprite
//sprite_index = sPlayerH;

if (xSpeed != 0) image_xscale = sign(xSpeed);

//Apply gravity
if (!place_meeting(x,y+1,Collision))
{
ySpeed += Grav;
}else
{
ySpeed = 0;

// use friction
apply_friction(SpeedUp);
}
direction_move_bounce(Collision);

// Change back to the move state
if (xSpeed == 0 && ySpeed == 0)
{
    image_blend = c_white;
    if (PlayerStats.hp <=0)
    {
//    PlayerStats.sapphires = 0;
//    Score = 0;
//    PlayerStats.hp = PlayerStats.maxhp;
//    PlayerStats.weapon_holstered = 0;
	room_restart();
	
    }
    state = move_state;
}