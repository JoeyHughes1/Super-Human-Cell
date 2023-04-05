if(gamePaused) {
	draw_surface(screenshot, 0, 0)
	draw_sprite_ext(PauseBackground, 0, defaultWidth/2, defaultHeight/2, 6, 6, 0, -1, 1)
	draw_sprite_ext(MainMenuButton, MainMenuPauseButton.image_index, defaultWidth/2, defaultHeight/3, 5, 5, 0, -1, 1)
	draw_sprite_ext(ResumeButton, ResumePauseButton.image_index, defaultWidth/2, 2*defaultHeight/3, 5, 5, 0, -1, 1)
	
	//Drawing the dialogue history
	if(array_length(dialogueHistory) > 0) {
		//Set drawing parameters
		draw_set_font(Dialogue_Font_Smaller)
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		var	nextTextY = historyGap
		var maxWidth = 0
		
		//Loop through dialogue to find maxWidth and last y value
		for(var i = array_length(dialogueHistory) - 1; i >= 0; i--) {
			if(string_width(dialogueHistory[i]) > maxWidth){
				maxWidth = string_width(dialogueHistory[i])
			}
			nextTextY += string_height(dialogueHistory[i]) + historyGap
			if(i > 0 && nextTextY + string_height(dialogueHistory[i-1]) > browser_height) {
				break
			}
		}
		
		//Draw the background
		draw_set_color(c_white)
		draw_set_alpha(0.9)
		draw_roundrect_ext(historyGap/2, historyGap/2, historyGap + maxWidth + historyGap/2, nextTextY - historyGap/2, 20, 20, false)
		
		//Change drawing parameters, loop through dialogue again and draw the dialogue
		draw_set_color(c_black)
		draw_set_alpha(1)
		nextTextY = historyGap
		for(var i = array_length(dialogueHistory) - 1; i >= 0; i--) {
			draw_text(historyGap, nextTextY, dialogueHistory[i])
			nextTextY += string_height(dialogueHistory[i]) + historyGap
			if(i > 0 && nextTextY + string_height(dialogueHistory[i-1]) > browser_height) {
				break
			}
		}
	}
}