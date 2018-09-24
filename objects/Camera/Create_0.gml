/// @description 
enum cammode {
	follow_object,
	follow_mouse_drag,
	follow_mouse_border,
	follow_mouse_peek,
	move_to_target,
	move_to_follow_object,
}

mode = cammode.move_to_follow_object;
following = Player;
boundless = false;

target_x = 300;
target_y = 200;


view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);