/// @description Insert description here
// You can write your code in this editor
image_angle = -14;

depth = 0;

x = camera_get_view_x(view_camera[0]) - 60;
y = camera_get_view_y(view_camera[0]) + 384;

hspeed = 20;
vspeed = 3;

countdown_to_disappearance = 450;

audio_play_sound(snd_ufo_two, 1, false);