if(!activated) {
	draw_self()
	draw_set_font(Door_Font)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_color(c_white)
	draw_text(x + image_xscale, y + image_yscale, particleRequirement)
} else {
	draw_sprite_ext(sprite_index, image_index, originalX, originalY, image_xscale, image_yscale, 0, c_white, 1)
}