/// @description Insert description here
// You can write your code in this editor
if !is_dismissed
{
	x =  camera_get_view_x(view_camera[0]) + 928;
	
	if !is_shown
	{
		if y > camera_get_view_y(view_camera[0]) + 32
		{
			y -= 20;
		} else
		{
			is_shown = true;
			y =  camera_get_view_y(view_camera[0]) + 32;
		}	
	} else
	{
		y =  camera_get_view_y(view_camera[0]) + 32;
	}
} else
{
	y += 20;
	
	if y > (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]))
	{
		instance_destroy();
	}
}


if letter_countdown > 0
{
	letter_countdown -= 1;
} else
{
	letter_countdown = 0;
	
	if position_meeting(mouse_x, mouse_y, self)
	{
		// Show tooltip
		obj_cursor_handler.tooltip = tooltip;
		
		if mouse_check_button(mb_left)
		{
			if !is_dismissed
			{
				obj_cursor_handler.tooltip = "";
				is_dismissed = true;
			}
		}
	}
}