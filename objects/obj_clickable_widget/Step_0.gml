/// @description Insert description here
// You can write your code in this editor

if sawed
{
	if mouse_check_button_released(mb_left)
	{
		sawed = false;
	}
} else
{
	if position_meeting(mouse_x, mouse_y, self)
	{
		if mouse_check_button(mb_left)
		{
			sawed = true;
			instance_create_depth(x + 64, y + 64, 0, obj_cut_wood);
		}
	}
}