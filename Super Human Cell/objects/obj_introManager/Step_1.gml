timer += step
if(timer < 5) {
	x = room_width/2 * (timer/5)
} else if(timer > 39 && timer < 43) {
	x = room_width/2 + room_width/2 * (timer-39)/3
} else if(timer >= 45 && timer < 46.5) {
	layer_background_blend(back_id, make_color_rgb(255*(timer-45)/1.5, 255*(timer-45)/1.5, 255*(timer-45)/1.5))
} else if(timer > 46.5) {
	room_goto(Respiratory)
}