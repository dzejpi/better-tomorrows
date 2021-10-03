/// @description Insert description here
// You can write your code in this editor
if !reloading
{
	bullet_impact_y = irandom_range(0, 560)
	
	if is_shooting_right
	{
		bullet_impact_x = room_width/4;
	} else
	{
		bullet_impact_x = 0;
	}
	
	_bullet = instance_create_layer(x, y, layer_id, obj_bullet);
	with(_bullet)
	{
		impact_x = obj_bullet_generator.bullet_impact_x;
		impact_y = obj_bullet_generator.bullet_impact_y;
	}
}

if time_to_next_shot > 0
{
	time_to_next_shot -= 1;
	reloading = true;
} else
{
	time_to_next_shot = irandom_range(0, fire_intensity);
	reloading = false;
}