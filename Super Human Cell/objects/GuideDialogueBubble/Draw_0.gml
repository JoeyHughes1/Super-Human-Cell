draw_set_font(font)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
var guideDistanceToTarget = sqrt(sqr(Guide.x - Guide.targetX) + sqr(Guide.y - Guide.targetY))


if(guideDistanceToTarget < 12) {
	anchorX = Guide.targetX - Guide.circleFactorX
	anchorY = Guide.targetY - Guide.circleFactorY
}

textX = anchorX
textY = anchorY - string_height(textArray[textCurrent]) - Guide.sprite_height/2 - (textMargin * 2)

if(fadingIn){
	currentAlpha = clamp(currentAlpha + 0.01, 0, normalAlpha)
	if(currentAlpha >= normalAlpha) fadingIn = false;
}
if(fadingOut){
	currentAlpha = clamp(currentAlpha - 0.01, 0, normalAlpha)
	if(currentAlpha <= 0){
		draw_set_alpha(1)
		instance_destroy();
	}
}

draw_set_color(c_white)
draw_set_alpha(currentAlpha)

draw_roundrect_ext(textX, textY, textX + string_width(textArray[textCurrent]) + textMargin * 2, anchorY - Guide.sprite_height/2, bubbleRadius, bubbleRadius, false)



draw_set_color(c_black)
if(!fadingOut) draw_set_alpha(1);
if(fadingOut) draw_set_alpha(currentAlpha/normalAlpha);


if(char_current <= string_length(textArray[textCurrent])) {
	char_current += char_speed
} else if (!waiting) {
	alarm[0] = room_speed * (2 + string_length(textArray[textCurrent])/80)
	waiting = true
}
draw_text(textX + textMargin, textY + textMargin, string_copy(textArray[textCurrent], 1, char_current))
draw_set_alpha(1)