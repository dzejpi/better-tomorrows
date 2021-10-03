/// @description Insert description here
// You can write your code in this editor
title = "Warm greetings!";
text = "Hail to the Postria!" + "\n" + "We are delighted to hear that you want to build your small business in our glorious country. We do not generally get involved in the businesses.";

x = camera_get_view_x(view_camera[0]) + 928;
y = camera_get_view_y(view_camera[0]) + 480;

letter_open = false;
letter_opened = false;
letter_spawned = false;

depth = -4;

tooltip = "Open the letter.";

audio_play_sound(snd_click, 1, false);