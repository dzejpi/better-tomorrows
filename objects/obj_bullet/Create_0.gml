/// @description Insert description here
// You can write your code in this editor
bullet_countdown = 180;
course_set = false;

bullet_speed = 45;

impact_x = 500;
impact_y = 500;

time_to_appear = 60;
image_alpha = 0;

if irandom_range(1, 5) = 5 
{
	audio_play_sound(snd_explosion_three, 1, false);
}