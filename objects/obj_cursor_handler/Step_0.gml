/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;

// Fix view if in the negative position
if camera_get_view_x(view_camera[0]) < 0
{
	camera_set_view_pos(view_camera[0], 0, camera_get_view_y(view_camera[0]));
}
if camera_get_view_y(view_camera[0]) < 0
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), 0);
}

// Fix view if it gets to the right or bottom position
if camera_get_view_x(view_camera[0]) > 5464
{
	camera_set_view_pos(view_camera[0], 5464, camera_get_view_y(view_camera[0]));
}
if camera_get_view_y(view_camera[0]) > 3072
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), 3072);
}

if mouse_check_button(mb_left)
{
	//window_set_cursor(cr_none);
} else
{
	//window_set_cursor(cr_default);
}

// Scrolling left
if x < (camera_get_view_x(view_camera[0]) + scroll_edge)
{
	if camera_get_view_x(view_camera[0]) >= 0
	{
		camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) - scroll_speed, camera_get_view_y(view_camera[0]));
	}
}

// Scrolling right
if x > (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - scroll_edge)
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) + scroll_speed, camera_get_view_y(view_camera[0]));
}

// Scrolling up
if y < (camera_get_view_y(view_camera[0]) + scroll_edge)
{
	if camera_get_view_y(view_camera[0]) >= 0
	{
		camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) - scroll_speed);
	}
}

// Scrolling down
if y > (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - scroll_edge)
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) + scroll_speed);
}
