/// @description Updates the Logo Fade
// Pauses, fades the logo in, pauses, fades the logo out, then transitions to the title screen

frame++

if(frame >= animationFrames[0] && frame <= animationFrames[1]) {
	image_alpha = clamp(image_alpha + 1/(animationFrames[1] - animationFrames[0]), 0, 1)
} else if (frame >= animationFrames[2] && frame <= animationFrames[3]) {
	image_alpha = clamp(image_alpha - 1/(animationFrames[3] - animationFrames[2]), 0, 1)
} else if (frame > animationFrames[3]) {
	room_goto(TitleScreen)
}