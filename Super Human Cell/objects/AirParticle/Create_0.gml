image_speed = 0
collected = false

originalX = x
originalY = y

circlingDiameter = 5
circlingPlace = random_range(0, 350)
circlingSpeed = random_range(4, 6)
circlingDirection = random(1)
if(circlingDirection >= 0.5) circlingDirection = -1 else circlingDirection = 1