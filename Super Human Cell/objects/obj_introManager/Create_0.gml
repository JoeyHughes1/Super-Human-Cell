//Timer for movement and fading
timer = 0
step = 1/room_speed

//Skipping
skippable = false
skipButtonShown = false
skipButtonAlpha = 0

//Fading to white at the end
lay_id = layer_get_id("Background");
back_id = layer_background_get_id(lay_id);
layer_background_blend(back_id, c_black)

//Initializing position
x = 0
y = room_height/2