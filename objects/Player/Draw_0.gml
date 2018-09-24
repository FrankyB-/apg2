/// @description 
if (state = grapplehook_state) && position_meeting(grappleX,grappleY,Collision)
{
	draw_line_width(grappleX,grappleY,ropeX,ropeY,2);
}
draw_self();

if  (Flash >0)
{
	Flash--;
	shader_set(shWhite)
	draw_self();
	shader_reset();
}