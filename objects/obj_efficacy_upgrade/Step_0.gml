/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if is_pressed
{
	obj_upgrade_handler.efficacy_upgrade_shown = false;
	obj_upgrade_handler.current_efficacy_upgrade += 1;
	
	instance_destroy();
}