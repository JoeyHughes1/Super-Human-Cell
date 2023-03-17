// This section flips the character's sprite depending on whether it's moving left or right.
// This condition checks if the X velocity is less than 0, meaning the character is moving left.
if(abs(vel_x) >= 1) {
	if (vel_x < 0)
	{
		// In that case, the horizontal scale of the instance is set to -1. This flips the sprite the other way around,
		// making it face left.
		image_xscale = -default_scale_x;
		image_yscale = default_scale_y;
		facingRight = false
	}
	// Otherwise - if the character is not moving left, this checks if the X velocity is greater than 0, meaning the character is moving right.
	else if (vel_x > 0)
	{
		// In that case, the horizontal scale is set to 1, so the character faces right again.
		image_xscale = default_scale_x;
		image_yscale = default_scale_y;
		facingRight = true
	}
}