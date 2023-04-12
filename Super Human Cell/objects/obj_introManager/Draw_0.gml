if(skipButtonShown) {
	var left = room_width*9/10
	var right = room_width - 10
	var top = room_height*9/10
	var bottom = room_height - 10
	var skipAlpha = clamp((room_speed - alarm[0])/room_speed, 0, 1)
	draw_set_alpha(skipAlpha)
	draw_roundrect_color_ext(left, top, right, bottom, 15, 15, c_white, c_white, false)
	draw_set_font(Dialogue_Font)
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
	draw_text_color((left + right)/2, (top + bottom)/2, "Space - Skip", c_black,c_black,c_black,c_black, skipAlpha)
}