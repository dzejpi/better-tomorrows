/// @description Start the main game
// Fade out
instance_create_depth(x, y, 0, obj_game_start_fade_out);
instance_create_depth(x, y, 0, obj_cursor_handler);

_inst = instance_create_depth(x, y, 0, obj_letter_envelope);
with(_inst)
{
	title = "Warm greetings!";
	text = "Praise for the Postria!" + "\n" + "We are delighted to hear that you want to build your business in our glorious country. We do not generally get involved in the businesses nor we want to regulate you as long as you pay the fair share." + "\n" + "We will be watching you with great interest as no business is small business in Postria." + "\n" + "\n" + "Praise for the Postria!";
}