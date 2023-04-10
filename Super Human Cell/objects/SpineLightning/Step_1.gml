timer++
var moving = 1
if(!movingRight) moving = -1
if(timer < lines) {
	array_push(coords, [
	coords[timer-1][0] + moving * round(random_range(30, 60)),
	coords[timer-1][1] + sign(random_range(-1, 1)) * round(random_range(10, 50))])
} else {
	alpha = clamp(1 - (timer-lines)/(room_speed/3), 0, 0.7)
	if(alpha == 0) instance_destroy()
}