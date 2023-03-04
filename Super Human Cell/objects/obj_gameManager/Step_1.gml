vx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
vy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;

camera_set_view_speed(view_camera[0], clamp(abs(Player.x - vx)/5, 1, 500), clamp( power(abs(Player.y - vy), 1.5)/350, 0, 500));
show_debug_message(abs(Player.y - vy))