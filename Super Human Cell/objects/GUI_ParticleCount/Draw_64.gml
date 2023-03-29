draw_sprite_ext(ParticleCountBackground, 0, 0, 0, 1.4, 1.4, 0, c_white, 1)
draw_self();
draw_set_font(GUI_Font)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_black)
if(instance_exists(Player)) {
	draw_text(sprite_width + 16, 16, string(Player.particleCount))
}