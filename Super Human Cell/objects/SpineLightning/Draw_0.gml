if(timer < 1) exit
var length = array_length(coords)
var offset = clamp(camera_get_view_y(obj_gameManager.currentCam), 4700, 20000) * 0.24
for(var i = 1; i < length; i++) {
	draw_set_alpha(alpha)
	draw_line_width_color(coords[i-1][0], coords[i-1][1] + offset, coords[i][0], coords[i][1] + offset, 2, arcColor, arcColor)
}

if(timer < lines && lines > 3 && random(1) > 0.8) {
	var branch = instance_create_layer(coords[length-1][0], coords[length-1][1], "VFX", SpineLightning)
	branch.movingRight = movingRight
	branch.isBranch = true
	if(lines == 4) {
		branch.lines = 3
	} else {
		branch.lines = 4
	}
}