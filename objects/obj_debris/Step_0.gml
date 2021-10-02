/// @description Insert description here
// You can write your code in this editor
if time_before_falling_down > 0
{
	time_before_falling_down -= 1;
	image_angle += 2;
} else
{
	falling_down = true;
	depth = 10;
}

if falling_down
{	
	if time_before_impact > 0
	{
		time_before_impact -= 1;
		
		image_angle += 1;
		vspeed += 0.1;	
	} else 
	{
		if y > 764
		{
			hspeed = 0;
			vspeed = 0;
		} else
		{
			image_angle += 1;
			vspeed += 0.1;	
		}
	}
}