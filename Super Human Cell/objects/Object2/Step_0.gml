/// @description Constantly Updates the position of the title to be relative to the mouse
// You can write your code in this editor

function getTitleCoord(axis) {
	var original = originalX
	var target = mouse_x
	var current = x
	
	if(axis == "y") {
		original = originalY
		target = mouse_y
		current = y
	}
	
	var targetCoord = original + (target - original)/bobbingScale
	
	var newStepCoord = current + (targetCoord - current)/bobbingSpeed	
	
	return newStepCoord
}

x = getTitleCoord("x")
y = getTitleCoord("y")