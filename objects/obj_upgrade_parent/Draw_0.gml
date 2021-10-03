/// @description Drawing
// Make the button appear at the beginning
if alpha_image < 1
{
	alpha_image += transition_speed;
}

draw_set_alpha(alpha_image);

// Draw as selected if mouse is hovering above
if (position_meeting(mouse_x, mouse_y, id) || is_pressed)
{
	if is_selectable
	{
		draw_sprite(spr_upgrade_back, 1, x, y - font_indentation);
	} else
	{
		draw_sprite(spr_upgrade_back, 2, x, y - font_indentation);
	}
} else if is_selectable
{
	draw_sprite(spr_upgrade_back, 0, x, y - font_indentation);
} else
{
	draw_sprite(spr_upgrade_back, 2, x, y - font_indentation);
}

draw_sprite(symbol_sprite, 0, x , y);

draw_set_alpha(1);