/// @description 
// vertical check
if (place_meeting(x,y+ySpeed_obj,Collision))
{
    while(!place_meeting(x,y+sign(ySpeed_obj),Collision))
    {
        y += sign(ySpeed_obj);
    }
    ySpeed_obj = 0;
}
y += ySpeed_obj;


if (!place_meeting(x,y+1,Collision))
{  
 ySpeed_obj += Grav_obj;
 if (ySpeed_obj > maxFallSpeed_obj) ySpeed_obj = maxFallSpeed_obj;
}