if(!activated) {
	draw_self()
	if(drawText) {
		draw_set_font(Door_Font)
		draw_set_halign(fa_right)
		draw_set_valign(fa_center)
		draw_set_color(c_black)
		draw_text(x, y + sprite_height/2, string(particleRequirement - Player.particleCount) + " more\nneeded")
	}
} else {
	image_alpha = max(0, image_alpha - 0.025)
	draw_sprite_ext(sprite_index, image_index, originalX, originalY, image_xscale, image_yscale, 0, c_white, image_alpha)
}