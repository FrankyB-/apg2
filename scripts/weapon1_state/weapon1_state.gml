// Create gun
if (!instance_exists(Gun)) && (PlayerStats.weapon_holstered = 0)
{
PlayerStats.weapon_holstered = 1;
instance_create_layer(x,y,"Weapon",Gun);
}
else if (instance_exists(Gun)) && (PlayerStats.weapon_holstered = 1)
	{
		instance_destroy(Gun);
		PlayerStats.weapon_holstered = 0;
	}
	state = move_state;

