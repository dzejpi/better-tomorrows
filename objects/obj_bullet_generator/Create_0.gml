/// @description Insert description here
// You can write your code in this editor

if irandom(1) = 1
{
	is_shooting_right = false;
} else
{
	is_shooting_right = true;
}

// The lesser the value, the bigger the intensity
fire_intensity = 120;
time_to_next_shot = fire_intensity;

reloading = false;

bullet_impact_x = 0;
bullet_impact_y = 0;

layer_id = layer_get_id("Background_Instances");