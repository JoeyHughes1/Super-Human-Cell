draw_set_color(c_white)
for(var i = 0; i < array_length(windLines); i++) {
	windLines[i][1] -= windLineSpeed
	if(windLines[i][1] <= 0){
		windLines[i] = [random_range(0, sprite_width), random_range(sprite_height - windLineLength * 2, sprite_height)]
	}
	var xPos = windLines[i][0]
	var yPos = windLines[i][1]
	var yPos2 = windLines[i][1] + windLineLength
	var ang = -1 * image_angle
	draw_line(x + (xPos * dcos(ang) - yPos * dsin(ang)), y + (yPos * dcos(ang) + xPos * dsin(ang)), x + (xPos * dcos(ang) - yPos2 * dsin(ang)), y + (yPos2 * dcos(ang) + xPos * dsin(ang)))
}