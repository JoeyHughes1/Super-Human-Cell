timer += step
if(timer < 5) {
	x = room_width/2 * (timer/5)
} else if(timer > 40 && timer < 44) {
	x = room_width/2 + room_width/2 * (timer-40)/3
} else if(timer >= 46 && timer < 47.5) {
	layer_background_blend(back_id, make_color_rgb(255*(timer-46)/1.5, 255*(timer-46)/1.5, 255*(timer-46)/1.5))
} else if(timer > 47.5) {
	room_goto(Respiratory)
}