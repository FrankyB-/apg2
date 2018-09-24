///apply_friction(amount)
var amount = argument[0];

if (xSpeed !=0)
{
    if (abs(xSpeed)-amount > 0)
    {
        xSpeed -= amount*image_xscale;
    }else
    {
        xSpeed = 0;
    }
}
