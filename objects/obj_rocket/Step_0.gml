/// @description Insert description here
// You can write your code in this editor
if abs(impact_x - x) <= 20
{	
	if abs(impact_y - y) <= 20
	{
		impacted = true;
	}
} else
{
	// Trigonometry, yay!
	side_a = point_distance(x, y, impact_x, impact_y);
	side_b = impact_x - x;

	image_angle = 180 + radtodeg(arcsin(side_b/side_a));
	
	move_towards_point(impact_x, impact_y, rocket_speed);
}

if impacted
{
	if shot_by_the_aa
	{
		instance_create_depth(x, y, 0, obj_explosion);
		instance_destroy();
	} else
	{
		instance_create_depth(x, y, 0, obj_impact);
		instance_create_depth(x, y, 0, obj_explosion);
		instance_destroy();
	}
}