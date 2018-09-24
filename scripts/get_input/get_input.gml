///get_input
right			= keyboard_check(vk_right);
left			= keyboard_check(vk_left);
up				= keyboard_check_pressed(vk_up)
uphold			= keyboard_check_direct(vk_up);
up_release		= keyboard_check_released(vk_up);
down			= keyboard_check(vk_down);
downhold		= keyboard_check_direct(vk_down);
down_release	= keyboard_check_released(vk_down);
Enter_up		= keyboard_check(vk_up);
Weapon1			= keyboard_check_pressed(ord("1")); // Gun
WeaponFire		= keyboard_check_pressed(vk_space); // gun shooting
WeaponCharge	= keyboard_check_direct(vk_space); // gun shooting
WeaponChargeShot= keyboard_check_released(vk_space); // gun shooting
Weapon2			= keyboard_check_pressed(ord("2")); // Grapple Hook
WeaponHook		= keyboard_check_pressed(ord("E")); // Grapple Hook shoot
WeaponHook_release		= keyboard_check_released(ord("E")); // Grapple Hook shoot

// Override the control for a gamepad
gp_id = 0;
var thresh = .5;
var threshUp = -.5;

if (gamepad_is_connected(gp_id))
{
    right = gamepad_button_check(gp_id,gp_padr) || gamepad_axis_value(gp_id,gp_axislh)> thresh;
    left = gamepad_button_check(gp_id,gp_padl) || gamepad_axis_value(gp_id,gp_axislh)< -thresh;
    up = gamepad_button_check_pressed(gp_id, gp_face1);
    up_release = gamepad_button_check_released(gp_id, gp_face1);
    down = gamepad_button_check_pressed(gp_id,gp_padd) || gamepad_axis_value(gp_id,gp_axislv) > thresh;
	down_release = gamepad_button_check_released(gp_id, gp_padd) || gamepad_axis_value(gp_id, gp_axislv)  < thresh;
	Enter_up = gamepad_button_check_released(gp_id, gp_padu) || gamepad_axis_value(gp_id, gp_axislv)  < threshUp;
	Weapon1 = gamepad_button_check_pressed(gp_id,gp_shoulderl);
}

