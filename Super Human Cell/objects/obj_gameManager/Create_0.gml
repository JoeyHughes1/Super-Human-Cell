//This will eventually be used for things like audio and music and the camera

enum CameraState {
	Follow,
	MoveTo,
	Fixed,
	Intro,
}

defaultCam = view_camera[0]
defaultWidth = camera_get_view_width(defaultCam)
defaultHeight = camera_get_view_height(defaultCam)
defaultTweenSpeed = 10


camState = CameraState.Follow
moveToWidth = 0
moveToX = 0
moveToY = 0
moveToSpeed = 0

fixCamX = 0
fixCamY = 0
fixCamZone = 0

function moveCameraTo(camera, destX, destY, destWidth, moveSpeed) {
	camState = CameraState.MoveTo
	camera_set_view_speed(camera, 0, 0)
	moveToX = destX
	moveToY = destY
	moveToWidth = destWidth
	moveToSpeed = moveSpeed
}

function fixCamera(camera, zone) {
	moveCameraTo(camera, zone.x, zone.y, zone.sprite_width, 10)
	fixCamX = zone.x
	fixCamY = zone.y
	fixCamZone = zone
}