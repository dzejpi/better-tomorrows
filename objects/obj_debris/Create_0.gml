/// @description Insert description here
// You can write your code in this editor
depth = 10;

image_speed = 0;

image_index = irandom(9);

if irandom(1) = 1
{
	image_xscale = -1;
}

hspeed = random_range(-7, 7);
vspeed = random_range(-5, -2);

time_before_falling_down = 20;
time_before_impact = 20;

falling_down = false;
