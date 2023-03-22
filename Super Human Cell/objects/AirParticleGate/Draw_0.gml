if(!activated) {
	draw_self()
	draw_set_font(Door_Font)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_color(c_white)
	draw_text(x + image_xscale, y + image_yscale, particleRequirement)
} else {
	image_alpha = max(0, image_alpha - 0.025)
	draw_sprite_ext(sprite_index, image_index, originalX, originalY, image_xscale, image_yscale, 0, c_white, image_alpha)
}