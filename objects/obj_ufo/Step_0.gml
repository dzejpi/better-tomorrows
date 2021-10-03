/// @description Insert description here
// You can write your code in this editor
if countdown_to_disappearance > 0
{
	countdown_to_disappearance -= 1;
} else
{
	// Play explosion
	audio_play_sound(snd_explosion_two, 1, false);
	
	instance_destroy();
}