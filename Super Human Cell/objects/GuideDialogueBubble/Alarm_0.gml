if(textCurrent + 1 < array_length(textArray)) {
	textCurrent++
	textArray[textCurrent] = StringWrap(textArray[textCurrent], textWidth, font)
	char_current = 1
	waiting = false
} else {
	fadingOut = true
}