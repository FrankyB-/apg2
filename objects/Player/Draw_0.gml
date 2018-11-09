/// @description 
if (state = grapplehook_state) && position_meeting(grappleX,grappleY,Collision)
{
	draw_line_width(grappleX,grappleY,ropeX,ropeY,2);
}
if  (Flash >0)
{
	Flash--;
	shader_set(shWhite)
	draw_self();
	shader_reset();
}



switch (state)
{
	case move_state:
		if (xSpeed =0)
		{
		sprite_index = spr_player_idle;
		mask_index = spr_player_mask;
		}else
		sprite_index = spr_player_run;
		mask_index = spr_player_mask;
	break;
	case jump_state:
		sprite_index = spr_player_jump;
		mask_index = spr_player_mask;
	break;
	case fall_state:
		sprite_index = spr_player_fall;
		mask_index = spr_player_mask;
	break;
	case slide_state:
		sprite_index = spr_player_slide;
	break;
	case hurt_state:
		sprite_index = spr_player_hurt;
		mask_index = spr_player_mask;
	break;
	case jetpack_state:
		sprite_index = spr_player_jump;
		mask_index = spr_player_mask;
	break;
	case crouch_state:
		sprite_index = spr_player_crouch;
		mask_index = spr_player_mask;
	break;
	case ledge_grab_state:
		sprite_index = spr_player_ledgegrab;
	break;
	case grapplehook_state:
		sprite_index = spr_player_jump;
		mask_index = spr_player_mask;
	break;
	default: sprite_index = spr_player_idle; mask_index = spr_player_mask;
	
	
}
draw_self();