if(gamePaused) {
	draw_surface(screenshot, 0, 0)
	draw_sprite_ext(PauseBackground, 0, defaultWidth/2, defaultHeight/2, 6, 6, 0, -1, 1)
	draw_sprite_ext(MainMenuButton, MainMenuPauseButton.image_index, defaultWidth/2, defaultHeight/3, 5, 5, 0, -1, 1)
	draw_sprite_ext(ResumeButton, ResumePauseButton.image_index, defaultWidth/2, 2*defaultHeight/3, 5, 5, 0, -1, 1)
}