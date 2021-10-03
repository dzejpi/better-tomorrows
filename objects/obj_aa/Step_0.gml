/// @description Insert description here
// You can write your code in this editor
if recoil > 0
{
	recoil -= 1;
} else
{
	if mouse_check_button(mb_right)
	{
		recoil = recoil_value;
		
		instance_create_depth(x, y, 0, obj_aa_bullet);
	}
}