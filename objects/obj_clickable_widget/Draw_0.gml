/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_sprite(spr_widget_wood, 0, x + 64, y + 64);

if sawed
{
	draw_sprite_ext(spr_widget_cutting, 0, x + 64, y + 64, -1, 1, 0, c_white, 1);
} else
{
	draw_sprite(spr_widget_cutting, 0, x + 64, y + 64);
}