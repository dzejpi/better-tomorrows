/// @description Insert description here
// You can write your code in this editor
draw_self();

proper_angle = point_direction(x, y, mouse_x, mouse_y)

draw_sprite_ext(spr_aa_cannon, 0, x, y, 1, 1, proper_angle, c_white, 1);
