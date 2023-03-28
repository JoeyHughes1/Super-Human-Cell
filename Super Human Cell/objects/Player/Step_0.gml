if(dash) {
	var keysPressed = [keyboard_check(ord("W")), keyboard_check(ord("S")), keyboard_check(ord("A")), keyboard_check(ord("D"))]
	var directionVertical = keysPressed[1] + -1 * keysPressed[0]
	var directionHorizontal = keysPressed[3] + -1 * keysPressed[2]
	if(!(directionVertical == 0 && directionHorizontal == 0)) {
		if(directionVertical != 0 && directionHorizontal != 0) {
			directionVertical *= 0.707
			directionHorizontal *= 0.707
		}
		vel_x = dash_length * directionHorizontal
		vel_y = dash_length * directionVertical
		drawDash = dashAnimationLength
		dash_count--
		dashPath[0] = x
		dashPath[1] = y
		oldSpriteState = [image_index, image_xscale, image_yscale, image_angle, image_blend, sprite_index]
		event_inherited()
		dash = false
		dashPath[2] = x
		dashPath[3] = y
		if(vel_y != 0) {
			vel_y = jump_speed * directionVertical * 0.7
			if(directionVertical > 0) vel_y = max_vel_y
		}
	} else {
		dash = false
		event_inherited()
	}
} else {
	event_inherited()
}