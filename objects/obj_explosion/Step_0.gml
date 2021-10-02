/// @description Insert description here
// You can write your code in this editor
if number_of_fragments > 0
{
	number_of_fragments -= 1;
	instance_create_depth(x, y, 0, obj_debris);
} else
{
	number_of_fragments = 0;
}