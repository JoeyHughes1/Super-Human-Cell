if(fadeIn && fadeOut) fadeIn = false

if(fadeIn) image_alpha = clamp(image_alpha - 0.025, 0, 1);
if(fadeOut) image_alpha = clamp(image_alpha + 0.025, 0, 1);

if(image_alpha <= 0 && fadeIn) {
	fadeIn = false
}
if(image_alpha >= 1 && fadeOut && alarm[1] == -1) {
	fadeOut = false
	alarm[1] = room_speed
}