/// @description Get state value and change into string
var State = string("");


if (Player.state = move_state)
{
	var State = string("Ground") //+ string(Player.xSpeed)
	if (instance_exists(Gun))
	{
		var State = string("Ground") + string(Gun.ChargeTimer)
	}//else
	//var State = string("Ground") + string(PlayerStats.playerMaxChargeWeapon)
}
if (Player.state = jump_state)
{
	var State = string("Jumping")
}
if (Player.state = fall_state)
{
	var State = string("Falling ")
}
if (Player.state = jetpack_state)
{
	var State = string("JetPack")
}
if (Player.state = ledge_grab_state)
{
	var State = string("LedgeGrab")
}
if (Player.state = crouch_state)
{
	var State = string("Crouch")
}
if (Player.state = grapplehook_state)
{
	var State = string("Hook")
}
if (Player.state = hurt_state)
{
	var State = string("Hurt")
}
if (Player.state = freeze_state)
{
	var State = string("Freeze")
}
if (Player.state = slide_state)
{
	var State = string("Slide"+ string(Player.Slide))
}
if (Player.state = interact_state)
{
	var State = string("Interaction")
}

draw_set_colour(c_white);
draw_line(Player.x,Player.y,Player.x+16*sign(Player.image_xscale),Player.y);


draw_set_font(fnt_text);
draw_set_color(c_yellow);
draw_text_ext(x-32,y-32,string(State),3,128);
draw_self();

