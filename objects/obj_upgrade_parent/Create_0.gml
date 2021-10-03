/// @description Insert description here
// You can write your code in this editor
upgrade_description = "";
upgrade_price = 1;

// Set sprite
sprite_index = spr_upgrade_back;

// Sprite is animated, stop it and switch to first inactive state
image_speed = 0;
image_index = 0;

// Double clicking prevention
double_click_prevention = 0;

// Appearance
alpha_image = 0;
transition_speed = 0.025;

// Checks whether the button can be used or not
is_selectable = false;

x_position = 0;
y_position = 0;

font_indentation = 0;

is_pressed = false;

countdown_to_press = 180;

increased_amount_per_second = 0;
increased_amount_multiplier = 1;

symbol_sprite = spr_upgrade_house;