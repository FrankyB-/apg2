move_();
// Manage state transition
if (!place_meeting(x,y+1,Collision))
{
	state = fall_state;
	previous_state = move_state;
}

if !place_meeting(x,y,InteractParent)
{
	state = previous_state;
	//layer_destroy("Buttons");
	layer_destroy_instances("Buttons");
}
var inst_ = instance_place(x,y,InteractParent)
if instance_exists(inst_)
	{
		var inst_name_ = object_get_name(inst_.object_index)
		show_debug_message("name =" + string(inst_name_))
	}
// Manage UI display only once
if (PlayerStats.Interact_touch)
{
	
	if !layer_exists("Buttons")
		{
			layer_create(500,"Buttons");
		}
		// Display Energy point needed
		if PlayerStats.ep  > 0
		{
			for (var d=0; d< inst_.Door_Energy; d++)
			{
				//instance_create_depth(inst_.x-16+d*8,inst_.y-64,500,ButtonEnergy)
				inst_.image_index = 0;
				//var _instb = instance_create_layer(inst_.x-16+d*8,inst_.y-64,"Buttons",ButtonEnergy)
			
				//_instb.depth = 499;
			}
		}else 
		{
			for (var d=0; d< inst_.Door_MaxEnergy; d++)
			{
				//var _inst = instance_create_depth(inst_.x-16+d*8,inst_.y-64,501,ButtonEnergy)
				var _inst = instance_create_layer(inst_.x-16+d*8,inst_.y-64,"Buttons",ButtonEnergy)
				_inst.image_index = 1;
				_inst.depth = 500;
			}
		}
		PlayerStats.Interact_touch = false;
}

// When player interact with the door
if (up)
{
	if inst_ && inst_name_ = "Door"
	{
		if !(inst_.Door_Energy == inst_.Door_MaxEnergy)
		{
			if PlayerStats.ep > 0 && PlayerStats.ep <= inst_.Door_MaxEnergy
			{
				for (var i = 0; i < PlayerStats.ep; i ++)
				{
				inst_.Door_Energy ++
				PlayerStats.Interact_touch = false;
				}
				PlayerStats.ep = 0;
			}
			if PlayerStats.ep > inst_.Door_MaxEnergy
			{
				for (var i = 0; i < inst_.Door_MaxEnergy; i ++)
				{
				inst_.Door_Energy ++
				PlayerStats.Interact_touch = false;
				}
				PlayerStats.ep -= inst_.Door_MaxEnergy;
			}
		}

	}
	PlayerStats.Interact_touch = true;
	if (inst_.Door_open)
		{
			room_goto(inst_.Room_select);
		}

}
	