///@description change_camera_mode
///@arg mode
///@arg following/target_x
///@arg target_y

with(Camera)
{
	mode = argument[0];
	
	switch(mode)
	{
		case cammode.move_to_target:
			target_x = argument[1];
			target_y = argument[2];
		break;
		
		case cammode.follow_object:
		case cammode.move_to_follow_object:
			following = argument[1];
		break;
	}
}