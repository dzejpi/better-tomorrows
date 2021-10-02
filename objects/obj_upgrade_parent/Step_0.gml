/// @description Insert description here
// You can write your code in this editor
tooltip = "" + upgrade_description + "Price: " + string(upgrade_price);

x = x_position;
y = y_position;

if countdown_to_press > 0
{
	countdown_to_press -= 1;
} else
{
	countdown_to_press = 0;
}

if obj_variable_handler.currency_amount >= upgrade_price
{
	is_selectable = true;
} else
{
	is_selectable = false;
}

if is_selectable
{
	// Select if mouse is above and the player clicks
	if ((position_meeting(mouse_x, mouse_y, self)))
	{	
		if mouse_check_button(mb_left) && countdown_to_press = 0
		{
			//audio_play_sound(snd_button_select, 10, false);
			
			obj_variable_handler.currency_amount -= upgrade_price;
			is_pressed = true;
		}
	}
}

if ((position_meeting(mouse_x, mouse_y, self)))
{
	obj_cursor_handler.tooltip = tooltip;
}

if double_click_prevention > 0
{
	double_click_prevention -= 1;
}