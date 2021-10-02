/// @description Start the main game
// Fade out
instance_create_depth(x, y, 0, obj_game_start_fade_out);
instance_create_depth(x, y, 0, obj_cursor_handler);
instance_create_depth(x, y, 0, obj_gui_handler);
instance_create_depth(x, y, 0, obj_event_handler);
instance_create_depth(x, y, 0, obj_clickable_widget);
instance_create_depth(x, y, 0, obj_upgrade_handler);
