image_angle = alarm[0]/outroDuration * 360 * numRotations
image_alpha = clamp(image_alpha - 1/outroDuration, 0, 1)
Guide.image_alpha = clamp(Guide.image_alpha - 1/outroDuration, 0, 1)

x = radius * dcos(numTurns * 360 * alarm[0]/outroDuration + offset) + portalMidX
y = radius * dsin(numTurns * 360 * alarm[0]/outroDuration + offset) + portalMidY
radius = distanceToMid * alarm[0]/outroDuration