function collidingWithPlayer() {
	return place_meeting(x, y, Player)
}
dimension = 1
if(sprite_height > sprite_width) dimension = 0