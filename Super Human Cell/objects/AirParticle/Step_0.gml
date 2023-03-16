if(image_index >= 6) {
	instance_destroy()
}

circlingPlace += circlingSpeed * circlingDirection

if(circlingPlace >= 360) {
	circlingPlace = circlingPlace % 360
}

x = originalX + dsin(circlingPlace) * circlingDiameter
y = originalY + dcos(circlingPlace) * circlingDiameter