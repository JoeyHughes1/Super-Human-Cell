var actualXVel = vel_x
var actualYVel = vel_y
vel_x = round(vel_x)
vel_y = round(vel_y)


movingX = true
movingY = true

function checkForDashThrough() {
	if(!amPlayer) return;
	if(place_meeting(x, y, DashRefill)) {
		with(instance_place(x, y, DashRefill)) {
			onPlayerCollision()
		}
	}
	if(place_meeting(x, y, DashUpgrade)) {
		with(instance_place(x, y, DashUpgrade)) {
			onPlayerCollision()
		}
	}
}

function moveX(_move_once) {
	var _collision_found = check_collision(_move_once, 0);

	if (!_collision_found) {
		x += _move_once;
		checkForDashThrough()
		if dash instance_create_layer(x, y, "Instances", DashTrail)
	} else {
		vel_x = 0;
		movingX = false
	}
}

function moveY(_move_once) {
	var _collision_found = check_collision(0, _move_once);

	if (!_collision_found) {
		y += _move_once;
		checkForDashThrough()
		if dash instance_create_layer(x, y, "Instances", DashTrail)
	} else {
		vel_y = 0;
		movingY = false
	}
}


if(vel_x == 0 && vel_y != 0) {
	repeat(abs(vel_y)) {
		if(movingY) {
			moveY(sign(vel_y))
		}
	}
} else if(vel_y == 0 && vel_x != 0) {
	repeat(abs(vel_x)) {
		if(movingX) {
			moveX(sign(vel_x))
		}
	}
} else if(abs(vel_x) > abs(vel_y)) {
	var multiple = floor(abs(vel_x)/abs(vel_y))
	var extra = abs(vel_x) % abs(vel_y)
	show_debug_message("vel_x: " + string(vel_x) + ", vel_y: " + string(vel_y) + ", multiple is: "+string(multiple)+", extra is: "+string(extra))
	repeat(abs(vel_y)) {
		repeat(multiple) {
			if(movingX) {
				moveX(sign(vel_x))
			} else break;
		}
		if(movingY) {
			moveY(sign(vel_y))
		}
	}
	repeat(extra) {
		if(movingX) {
			moveX(sign(vel_x))
		} else break;
	}
	
} else if (abs(vel_y) > abs(vel_x)) {
	var multiple = floor(abs(vel_y)/abs(vel_x))
	var extra = abs(vel_y) % abs(vel_x)
	repeat(abs(vel_x)) {
		repeat(multiple) {
			if(movingY) {
				moveY(sign(vel_y))
			} else break;
		}
		if(movingX) {
			moveX(sign(vel_x))
		}
	}
	repeat(extra) {
		if(movingY) {
			moveY(sign(vel_y))
		} else break;
	}
} else if (abs(vel_x) == abs(vel_y)) {
	repeat(abs(vel_x)) {
		if(movingX) {
			moveX(sign(vel_x))
		}
		if(movingY) {
			moveY(sign(vel_y))
		}
		if(!movingX && !movingY) break;
	}
}


if(movingX) vel_x = actualXVel
if(movingY) vel_y = actualYVel