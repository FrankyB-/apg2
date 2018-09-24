///Enemy A_move_right_state
var wall_at_right = place_meeting(x+1,y,Collision);
var ledge_at_right = !position_meeting(bbox_right+1,bbox_bottom+1, Collision);

if(wall_at_right || ledge_at_right)
{
    state = Enemy_move_left;
}
// Control the Enemy A sprite
image_xscale = 1;

// Move the Enemy A
x += xSpeed_enemy;