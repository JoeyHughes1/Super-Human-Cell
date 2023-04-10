pulseRadius = 0
maxPulseRadius = sprite_height
collected = false
function onPlayerCollision() {
	if collected return;
	other.dash_count = other.max_dash_count
	collected = true
	image_alpha = 0.25
	image_speed = 0;
	alarm[0] = room_speed * 3.5
}