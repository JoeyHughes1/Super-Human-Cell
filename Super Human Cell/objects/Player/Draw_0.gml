if(drawDash > 0) {
	//draw_line_width_color(dashPath[0], dashPath[1], dashPath[2], dashPath[3],
	//	6 * drawDash/dashAnimationLength, c_purple, make_color_rgb(242, 3, 255))
	draw_sprite_ext(PlayerSprite, oldSpriteState[0], dashPath[0], dashPath[1], 
		oldSpriteState[1], oldSpriteState[2], oldSpriteState[3], oldSpriteState[4], 
		0.7 * drawDash/dashAnimationLength)
	drawDash--
}
draw_self()
if(dashable) {
	var tlx = x - abs(sprite_width)/2
	var tly = y - abs(sprite_height)/2
	for(var i = 0; i < dash_count; i++) {
		draw_roundrect_color_ext(tlx+i*9, tly, tlx+i*9+6, tly+15, 2, 2, make_color_rgb(242, 3, 255), make_color_rgb(242, 3, 255), false)
	}
}