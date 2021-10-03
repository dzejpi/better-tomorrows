/// @description Insert description here
// You can write your code in this editor
if !course_set
{
	move_towards_point(impact_x, impact_y, bullet_speed);
	image_angle = point_direction(x, y, impact_x, impact_y);
	course_set = true;
}

// Flying down
if course_set
{
	vspeed -= 0.01;
	
	if image_angle >= 90
	{
		image_angle -= 0.01;
	} else
	{
		image_angle += 0.01;
	}
}

if bullet_countdown > 0
{
	bullet_countdown -= 1;
} else
{
	instance_destroy();
}

if time_to_appear > 0
{
	time_to_appear -= 1;
	image_alpha += 100/60;
} else
{
	image_alpha = 1;
}