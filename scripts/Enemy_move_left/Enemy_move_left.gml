///Enemy A move_left_state
var wall_at_left = place_meeting(x-1,y,Collision);
var ledge_at_left = !position_meeting(bbox_left-1,bbox_bottom+1, Collision);

if(wall_at_left || ledge_at_left)
{
    state = Enemy_move_right;
}
// Control the Enemy A sprite
image_xscale = -1;

// Move the Enemy A
x -= xSpeed_enemy;
