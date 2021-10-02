/// @description Insert description here
draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_set_font(font_medium_text);

draw_set_colour(text_color);
draw_text(x + 16, y + 32, letter_title);

draw_set_font(font_small_text);

draw_set_valign(fa_top);

draw_text_ext(x + 16, y + 32 + 32, letter_text, -1, 352);

