/// @description Set credits variables
// Fade out
instance_create_depth(x, y, 0, obj_game_start_fade_out);
instance_create_depth(x, y, 0, obj_variable_handler);

indentation = 48;

// Text colors
button_text_color = make_colour_rgb(250, 250, 250);
shadow_text_color = make_colour_rgb(33, 33, 33);

// How long credits are displayed
countdown = 4000;

// Credits are not ended yet
credits_ended = false;

// Texts
first_text = "Better Tomorrows";
second_text = "Made by DzejPi for Ludum Dare 49."
third_text = "Dedicated to Kate <3.";
fourth_text = "Special shout-out to:";
fifth_text = "~ Neutral Face ~ as always for everything you do for me.";
sixth_text = "Andy for being Andy and letting me sleep this Jam.";
seventh_text = "C0rn3j, Majky & Stadtpark.";
eigth_text = "All NATOCO guys. Can't image my life without you!";
ninth_text = "My special rainbow group. You know who you are.";
tenth_text = "All guys and gals in Supernova. You rock!";

middle_x = room_width/2;

first_y = indentation * 3;
second_y = indentation * 4;
third_y = indentation * 6;
fourth_y = indentation * 7;
fifth_y = indentation * 8;
sixth_y = indentation * 9;
seventh_y = indentation * 10;
eight_y = indentation * 11;
ninth_y = indentation * 12;
tenth_y = indentation * 13;