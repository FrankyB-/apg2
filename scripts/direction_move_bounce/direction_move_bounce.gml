///direction_move_bounce(collision_object)
var collision_object = argument0;

// Horizontal Collisions
if (place_meeting(x+xSpeed,y,collision_object))
{
    while(!place_meeting(x+sign(xSpeed),y,collision_object))
    {
        x += sign(xSpeed);
    }
    xSpeed = -(xSpeed/2);
}
x += xSpeed;
// Vertical Collisions
if (place_meeting(x,y+ySpeed,collision_object))
{
    while(!place_meeting(x,y+sign(ySpeed),collision_object))
    {
        y += sign(ySpeed);
    }
    ySpeed = -(ySpeed/2);
    if (abs(ySpeed) <2) ySpeed = 0;
}
y += ySpeed;

