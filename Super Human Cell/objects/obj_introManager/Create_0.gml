timer = 0
step = 1/room_speed
x = 0
y = room_height/2
lay_id = layer_get_id("Background");
back_id = layer_background_get_id(lay_id);
layer_background_blend(back_id, c_black)