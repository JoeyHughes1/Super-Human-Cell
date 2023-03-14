//Runs the parent Create event
event_inherited()

//Speeds
brake_speed = 0.8;
air_acceleration = 0.6;
acceleration_speed = 2.9;
def_jump_speed = jump_speed

//Terminal Velocities
max_vel_x = 10
max_vel_y = 17

def_max_vel_x = max_vel_x
def_max_vel_y = max_vel_y

running_jump_boost_ratio = 8

default_scale_x = image_xscale;
default_scale_y = image_yscale;
spawn_x = x
spawn_y = y

jump_held = false
moving_right = false
moving_left = false
movementAllowed = true

//Scores
particleCount = 0

function reset() {
	x = grounded_x
	y = grounded_y
	vel_x = 0
	vel_y = 0
}