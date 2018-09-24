/// @description 

    // Draw the hearts max
for (var i=0; i<maxhp; i++)
{
    draw_sprite_ext(s_healthpoint, 0, 24+i*18, 20, 1, 1, 0, c_black, 0.5);
}
// Draw the hearts
for (var i=0; i<hp; i++)
{
    draw_sprite_ext(s_healthpoint, 0, 24+i*18, 20, 1, 1, 0, c_white, 1);
}
/// @description 

    // Draw the energy max
for (var i=0; i<maxep; i++)
{
    draw_sprite_ext(s_energypoint, 0, 24+i*18, 40, 1, 1, 0, c_black, 0.5);
}
// Draw the energy point
for (var i=0; i<ep; i++)
{
    draw_sprite_ext(s_energypoint, 0, 24+i*18, 40, 1, 1, 0, c_white, 1);
}

///////
	var pc;
	pc = (Player.currentFuel / Player.MaxFuel) * 100;
	draw_healthbar(16, 128, 32, 512, pc, c_black, c_red, c_lime, 3, true, true)
