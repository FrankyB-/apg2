/// @description 

switch (state)
{
	case Enemy_move_left:
		sprite_index = spr_enemy_001;
	break;
	case Enemy_move_right:
		sprite_index = spr_enemy_001;
	break;
	default: sprite_index = spr_enemy_001;
}
draw_self();