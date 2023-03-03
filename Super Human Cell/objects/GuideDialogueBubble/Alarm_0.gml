if(textCurrent + 1 < array_length(textArray)) {
	textCurrent++
	textArray[textCurrent] = StringWrap(textArray[textCurrent], textWidth)
	char_current = 1
	waiting = false
} else {
	fadingOut = true
}