/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, obj_clickable_object)
{
	// Alignment to the center
	draw_set_font(font_medium_text);
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);

	// Shadow
	draw_set_colour(shadow_text_color);
	draw_text(x + 1, y + 1, tooltip);

	// Button text
	draw_set_colour(text_color);
	draw_text(x, y, tooltip);
}