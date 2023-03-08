event_inherited()

//direction is 1 for to the right, -1 for the left
function acceleratePlayer(direction) {
	vel_x += direction * acceleration_speed * power(1.2, abs(vel_x) * -1)
}

function capVelocities() {
	if(vel_x > max_vel_x) {
		vel_x = max_vel_x
	} else if (vel_x < -1 * max_vel_x) {
		vel_x = -1 * max_vel_x
	}
	
	if(vel_y > max_vel_y) {
		vel_y = max_vel_y
	} else if (vel_y < -1 * max_vel_y) {
		vel_y = -1 * max_vel_y
	}
}

//Handles acceleration in the x direction in various scenarios
//If only right is held
if(movementAllowed) {
	if(moving_right && !moving_left) {
	
		//If airborne, then use air acceleration
		if(!grounded) {
			vel_x += air_acceleration;
		} else {
		
			//If grounded and already moving the opposite direction, use brake speed
			if(sign(vel_x) == -1) {
				vel_x += brake_speed;
			}
		
			//If grounded and not moving in the opposite direction, accelerate using the acceleratePlayer formula
			else {
				acceleratePlayer(1)
			}
		}
	}

	//If only left is held
	else if(moving_left && !moving_right) {
	
		//If airborne, then use air acceleration
		if(!grounded) {
			vel_x -= air_acceleration
		} else {
		
			//If grounded and already moving the opposite direction, use brake speed
			if(sign(vel_x) == 1) {
				vel_x -= brake_speed;
			}
		
			//If grounded and not moving in the opposite direction, accelerate using the acceleratePlayer formula
			else {
				acceleratePlayer(-1)
			}
		}
	}
}

//Handles acceleration in the Y direction
if(jump_held || place_meeting(x, y, obj_windEffect)) {
	vel_y += grav_speed;
} else {
	if(vel_y < 0) {
		vel_y += even_quicker_grav_speed;
	} else {
		vel_y += quicker_grav_speed;
	}
}

//Caps each velocity to their terminal velocities if they have gone past:
capVelocities()

//show_debug_message("vel_y: " + string(vel_y) + " grounded: " + string(grounded))
