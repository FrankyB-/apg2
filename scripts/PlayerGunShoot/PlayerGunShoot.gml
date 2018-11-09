// Decrease our shot timer and check if shot timer is 0
// If so we need to reset shotTimer to equal our firerate,
// Apply recoil effect to image and set the bullets properties (Speed, direction, image_xscale)

if (Player.WeaponFire)
{
		
		shotTimer = firerate;
		//x -= image_xscale * recoilAmt;
		 with (instance_create_layer(x+sign(64),y, "Weapon", Bullets))
		{
		direction = (Player.image_xscale == 1) ? 0 : 180;
		speed = 25;
		image_xscale = Player.image_xscale;
		image_yscale = Player.image_yscale;
		}
		ChargeTimer = 0;
}

if (Player.WeaponCharge) ChargeTimer ++;
if (Player.WeaponChargeShot)
{
	if (ChargeTimer > PlayerStats.playerMaxChargeWeapon)
	{
				shotTimer = firerate;
				x -= image_xscale * recoilAmt;
				with (instance_create_layer(x+sign(24),y-8, "Weapon", Bullets))
				{
					direction = (Player.image_xscale == 1) ? 0 : 180;
					speed = 25;
					image_xscale = Player.image_xscale*4;
					image_yscale = Player.image_yscale*4;
				}
				ChargeTimer = 0
	}
}




//if (--shotTimer<= 0)
//{
//	if (Player.WeaponFire && (ChargeTimer <=3))
//	{
//		ChargeTimer = 0;
//		shotTimer = firerate;
//		x -= image_xscale * recoilAmt;
//		with (instance_create_layer(x+sign(24),y, "Weapon", Bullets))
//		{
//		direction = (Player.image_xscale == 1) ? 0 : 180;
//		speed = 25;
//		image_xscale = Player.image_xscale;
//		//image_yscale = Player.image_yscale;
//		}
//	}
//	if (Player.WeaponCharge)
//	{
//		ChargeTimer += 1;
		
//	}
//	if (Player.WeaponChargeShot)
//		{
//		if (ChargeTimer >= 3)
//			{
//				shotTimer = firerate;
//				x -= image_xscale * recoilAmt;
//				with (instance_create_layer(x+sign(24),y-8, "Weapon", Bullets))
//				{
//					direction = (Player.image_xscale == 1) ? 0 : 180;
//					speed = 25;
//					image_xscale = Player.image_xscale*4;
//					image_yscale = Player.image_yscale*4;
					
//				}
//				ChargeTimer = 0;
//			}
//		}
//}

