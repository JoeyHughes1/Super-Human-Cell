collected = false
function onPlayerCollision() {
	if collected return;
	other.dash_count = other.max_dash_count
	collected = true
	image_alpha = 0.2
	alarm[0] = room_speed * 3.5
}