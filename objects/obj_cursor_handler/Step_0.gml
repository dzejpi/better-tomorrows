/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;

if mouse_check_button(mb_left)
{
	window_set_cursor(cr_none);
} else
{
	window_set_cursor(cr_default);
}