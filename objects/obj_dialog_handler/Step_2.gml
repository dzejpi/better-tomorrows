/// @description Adjust the position properly
// Container dimensions adjusted to the camera view
container_x = camera_get_view_x(view_camera[0]) + dialog_indentation;
container_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - dialog_height - dialog_indentation;
container_width = camera_get_view_width(view_camera[0]) - (dialog_indentation * 2);
container_height = dialog_height;

// Maximum text width
text_width = container_width - (text_indentation * 8);
text_x = container_x + text_indentation;
text_y = container_y + text_indentation;