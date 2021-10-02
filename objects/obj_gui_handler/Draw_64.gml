/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_medium_text);

draw_set_color(text_color);
draw_rectangle(x, y, x + 1366, y + gui_height + (edge_size * 2), false);

draw_set_color(white_color);
draw_rectangle(x + edge_size, y + edge_size, x + 1366 - (edge_size * 1), y + gui_height + edge_size, false);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(text_color);

draw_text(x + 16 + edge_size , y + edge_size, "" + obj_variable_handler.current_currency + " " + string(obj_variable_handler.currency_amount));

draw_set_halign(fa_right);
draw_text(x + 1366 - 16 - edge_size, y + edge_size, "" + obj_variable_handler.current_objective);
