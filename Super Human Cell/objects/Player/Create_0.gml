//Runs the parent Create event
event_inherited()
amPlayer = true

//Speeds
brake_speed = 0.8;
air_acceleration = 0.6;
acceleration_speed = 2.9;
def_jump_speed = jump_speed

//Terminal Velocities
max_vel_x = 10
max_vel_y = 17

def_max_vel_x = max_vel_x

running_jump_boost_ratio = 8

default_scale_x = image_xscale;
default_scale_y = image_yscale;
spawn_x = x
spawn_y = y


jump_held = false
moving_right = false
moving_left = false
movementAllowed = true
forcedLowGravity = false

//Dashing
dash_length = 275
max_dash_count = 0
dash_count = max_dash_count
dashCooldown = 0
dashCooldownLength= room_speed/3.5
dashAnimationLength = room_speed/4
drawDash = 0
dashPath = [0, 0, 0, 0] // x1, y1, x2, y2
oldSpriteState = [image_index, image_xscale, image_yscale, image_angle, image_blend]

//Scores
particleCount = 0

function reset() {
	x = grounded_x
	y = grounded_y
	vel_x = 0
	vel_y = 0
}

instance_create_layer(x, y, "Characters", obj_EntranceEffect)