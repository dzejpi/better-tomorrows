/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if is_pressed
{
	obj_upgrade_handler.house_upgrade_shown = false;
	obj_upgrade_handler.current_house_upgrade += 1;
	
	instance_destroy();
}