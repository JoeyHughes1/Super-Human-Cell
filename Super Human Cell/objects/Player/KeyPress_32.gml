if(grounded) {
	vel_y = -jump_speed - abs(vel_x)/running_jump_boost_ratio;
	grounded = false
} else {
	//vel_y = -jump_speed - abs(vel_x)/running_jump_boost_ratio;
}