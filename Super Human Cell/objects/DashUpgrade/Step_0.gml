if(!collected) {
	bobCounter++
	if(bobCounter > 360) bobCounter = 0;
	y = originalY + room_speed/3 * dsin(bobCounter)
} else {
	y -= 2
	image_alpha = clamp(image_alpha - 0.075, 0, 1)
	if(image_alpha <= 0) {
		instance_destroy()
	}
}