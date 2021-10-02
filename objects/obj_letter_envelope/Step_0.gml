/// @description Insert description here
// You can write your code in this editor
if mouse_check_button(mb_left)
{
	if position_meeting(mouse_x, mouse_y, self)
	{
		if !letter_open
		{
			letter_open = true;
			letter_opened = true;
		}
	}
}

if position_meeting(mouse_x, mouse_y, self)
{
	// Display tooltip
	if letter_opened 
	{
		obj_cursor_handler.tooltip = "";
	}
	else 
	{
		obj_cursor_handler.tooltip = tooltip;
	}
}

if letter_opened
{
	if !letter_spawned
	{
		letter_spawned = true;
		instance_create_depth(x, y, 0, obj_letter_paper);
		
		obj_letter_paper.letter_title = title;
		obj_letter_paper.letter_text = text;
	}
	
	y += 20;
	
	if y > (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]))
	{
		instance_destroy();
	}
}