if(!movementAllowed) {
	exit
}
if(grounded) {
	vel_y = -jump_speed - abs(vel_x)/running_jump_boost_ratio;
	grounded = false
	sprite_index = PlayerSprite_Jump
}