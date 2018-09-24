move_();



if (!place_meeting(x,y+1,Collision))
{
	state = fall_state;
	previous_state = move_state;
}

if !place_meeting(x,y,InteractParent)
{
	state = previous_state;
}

if (up)
{
	var inst_ = instance_place(x,y,InteractParent)
	var inst_name_ = object_get_name(inst_.object_index)
	show_debug_message("name =" + string(inst_name_))
	
	if inst_ && inst_name_ = "Door"
	{
		if !(inst_.Door_Energy == inst_.Door_MaxEnergy)
		{
			if PlayerStats.ep > 0 && PlayerStats.ep <= inst_.Door_MaxEnergy
			{
				for (var i = 0; i < PlayerStats.ep; i ++)
				{
				inst_.Door_Energy ++
				}
				PlayerStats.ep = 0;
			}
			if PlayerStats.ep > inst_.Door_MaxEnergy
			{
				for (var i = 0; i < inst_.Door_MaxEnergy; i ++)
				{
				inst_.Door_Energy ++
				
				}
				PlayerStats.ep -= inst_.Door_MaxEnergy;
			}
		}
		// Display Energy point needed
		for (var d=0; d< inst_.Door_Energy; d++)
		{
			instance_create_depth(x-16+d*8,y-64,500,ButtonEnergy)
			//instance_create_layer(x+d*10,y-64,"Buttons",ButtonEnergy)
		}
		for (var d=0; d< inst_.Door_MaxEnergy; d++)
		{
			var _inst = instance_create_depth(x-16+d*8,y-64,501,ButtonEnergy)
			//var inst_ = instance_create_layer(x+d*10,y-64,"Buttons",ButtonEnergy)
			_inst.image_index = 1;
		}
	}
	if (inst_.Door_open)
		{
			room_goto(inst_.Room_select);
		}

}
	