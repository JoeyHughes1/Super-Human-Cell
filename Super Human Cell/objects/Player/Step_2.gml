event_inherited();

// This is a switch statement that runs on the 'sprite_index' variable, which stores the sprite
// currently assigned to the instance.
// This allows us to transition to some other sprite, depending on the currently assigned sprite, and some additional conditions.
switch (sprite_index)
{
	// Code under this case runs if the assigned sprite is 'spr_player_walk', meaning the player is walking.
	case PlayerSprite_Walk:
		// Set the animation speed to 1, as it may have been set to 0 during the jump animation.
		image_speed = 1;
	
		// This checks if the X velocity is 0, meaning the player is not moving horizontally.
		if (abs(vel_x) <= 0.5)
		{
			// In that case we change its sprite to the idle one.
			sprite_index = PlayerSprite_Idle;
		}
	
		// This checks if the Y velocity of the player is greater than 1, meaning it is falling down.
		// This would happen when the player walks off a ledge.
		if (abs(vel_y) > 1)
		{
			// In that case we change its sprite to the fall one, and reset the frame to 0.
			sprite_index = PlayerSprite_Jump;
			image_index = 0;
		}
		break;

	// Code under this case runs if the assigned sprite is 'spr_player_jump', meaning the player was in the middle of a jump.
	case PlayerSprite_Jump:

		// This checks if the player is now on the ground
		if (grounded)
		{
			// In that case we change its sprite to the idle sprite.
			sprite_index = PlayerSprite_Idle;
		
			// We also reset the animation speed to 1, as it was set to 0 at the end of the fall animation.
			image_speed = 1;
		
		}
		break;
}