windLineDensity = 60
windLineSpeed = 25
windLineLength = 50

windLines = []

for(var i = 0; i < windLineDensity; i++) {
	windLines[i] = [random_range(0, sprite_width), random_range(0, sprite_height)]
}