if(!collected || pulseRadius > 4 * maxPulseRadius/(room_speed)) {
	pulseRadius = (pulseRadius + 2* maxPulseRadius/(room_speed)) % (maxPulseRadius * 2)
	draw_set_alpha(clamp(1 - pulseRadius/maxPulseRadius, 0, 0.6))
	draw_circle_color(x, y, pulseRadius, c_blue, c_blue, true)
	draw_circle_color(x, y, pulseRadius-1, c_blue, c_blue, true)
	draw_circle_color(x, y, pulseRadius+1, c_blue, c_blue, true)
	draw_set_alpha(1)
}

draw_self()