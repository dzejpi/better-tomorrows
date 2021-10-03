/// @description Insert description here
// You can write your code in this editor
if countdown > 0
{
	countdown -= 1;
} else
{
	instance_destroy();
}

vspeed += 0.5;
image_angle += wood_rotation;