/// @description Draw the transition
display_set_gui_size(1366, 768); 

draw_set_alpha(alpha);

draw_rectangle_color(0, 0, 1366, 768, c_black, c_black, c_black, c_black, false);

draw_set_color(c_white);
draw_set_alpha(1);

draw_set_font(font_credits_title);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(1366/2, 768/2, displayed_text)

draw_set_font(font_credits_text);
draw_text(1366/2, (768/2) + 48, secondary_text)

draw_set_alpha(1);
