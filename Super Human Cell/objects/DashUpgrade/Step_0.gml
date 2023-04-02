if(!collected) {
	bobCounter++
	if(bobCounter > 360) bobCounter = 0;
	y = originalY + room_speed/3 * dsin(bobCounter)
} else {
	image_alpha = clamp(image_alpha - 0.025, 0, 1)
	if(image_alpha <= 0) {
		instance_destroy()
	}
}