collected = false
originalY = y
bobCounter = 0

function onPlayerCollision() {
	if collected return;
	other.max_dash_count++
	other.dash_count++
	collected = true
}