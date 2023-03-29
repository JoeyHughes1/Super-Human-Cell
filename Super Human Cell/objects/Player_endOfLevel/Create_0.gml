outroDuration = room_speed * 3
alarm[0] = outroDuration

obj_gameManager.outroTargetWidth = camera_get_view_width(obj_gameManager.currentCam)
obj_gameManager.outroWidthStep = obj_gameManager.outroTargetWidth/outroDuration

portalMidX = obj_EndOfLevel.x
portalMidY = obj_EndOfLevel.y
distanceToMid = point_distance(x, y, portalMidX, portalMidY)

radius = distanceToMid
offset = darctan((y-portalMidY)/(x-portalMidX))
if(x<portalMidX) offset += 180


numTurns = 4
numRotations = 6