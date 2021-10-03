/// @description Insert description here
// You can write your code in this editor
if !picked
{
	image_index = 0;
	
	if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper) && position_meeting(mouse_x, mouse_y, self) && !picked
	{
		obj_cursor_handler.tooltip = tooltip;
		
		if mouse_check_button(mb_left)
		{
			picked = true;
			obj_variable_handler.currency_amount += price;
			
			obj_cursor_handler.tooltip = "";
		}
	}
} else
{
	image_index = 1;
}
