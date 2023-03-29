if(distance_to_object(Player) < playerActivateRadius) {
	if(!activated) {
		if(Player.particleCount >= particleRequirement) {
			activated = true
			x = 0 - sprite_width
			y = 0 - sprite_height
			image_speed = 1
		} else {
			drawText = true
		}
	}
} else if(drawText) drawText = false
if(image_alpha <= 0) instance_destroy();