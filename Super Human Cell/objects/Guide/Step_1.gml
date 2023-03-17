cyclePosition++
if(cyclePosition > cycleLength) {
	cyclePosition = 0
}

targetX = targetPlayer.x - targetPlayer.image_xscale * 40 + (dsin(cyclePosition/cycleLength * 360) * circleRadius)
targetY = targetPlayer.y - targetPlayer.image_yscale * 35 - (dsin(cyclePosition/cycleLength * 360 + 90) * circleRadius)

x = x + (targetX - x)/followSpeed
if(x > targetPlayer.x) {
	image_xscale = abs(image_xscale);
} else {
	image_xscale = abs(image_xscale) * -1;
}
if(abs(x - targetPlayer.x) >= 100) {
	image_angle = clamp((abs(x-targetPlayer.x) - 100) * sign(x-targetPlayer.x) / 2, -70, 70);
	
} else {
	image_angle = 0;
}
y = y + (targetY - y)/(followSpeed*1.5)
