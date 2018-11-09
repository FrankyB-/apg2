/// @description UI display
var inst_ = instance_place(x,y,InteractParent)
if instance_exists(inst_)
{
	var inst_name_ = object_get_name(inst_.object_index)
	show_debug_message("name =" + string(inst_name_))
			// Display Energy point needed
	
	for (var d=0; d< inst_.Door_Energy; d++)
	{
		instance_create_depth(inst_.x-16+d*8,inst_.y-64,500,ButtonEnergy)
		//instance_create_layer(x+d*10,y-64,"Buttons",ButtonEnergy)
	}
	for (var d=0; d< inst_.Door_MaxEnergy; d++)
	{
		var _inst = instance_create_depth(inst_.x-16+d*8,inst_.y-64,501,ButtonEnergy)
		//var inst_ = instance_create_layer(x+d*10,y-64,"Buttons",ButtonEnergy)
		_inst.image_index = 1;
	}
}