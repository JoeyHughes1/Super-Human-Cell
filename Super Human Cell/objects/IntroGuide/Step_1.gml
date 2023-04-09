cyclePosition++
if(cyclePosition > cycleLength) {
	cyclePosition = 0
}

circleFactorX = (dsin(cyclePosition/cycleLength * 360) * circleRadius)
circleFactorY = -1 * (dsin(cyclePosition/cycleLength * 360 + 90) * circleRadius)

targetX = targetPlayer.x - 30 + circleFactorX
targetY = targetPlayer.y - 30 + circleFactorY

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
