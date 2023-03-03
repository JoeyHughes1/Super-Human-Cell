cyclePosition++
if(cyclePosition > cycleLength) {
	cyclePosition = 0
}

targetX = targetPlayer.x - targetPlayer.image_xscale * 40 + (dsin(cyclePosition/cycleLength * 360) * circleRadius)
targetY = targetPlayer.y - targetPlayer.image_yscale * 35 - (dsin(cyclePosition/cycleLength * 360 + 90) * circleRadius)

x = x + (targetX - x)/followSpeed
y = y + (targetY - y)/followSpeed
