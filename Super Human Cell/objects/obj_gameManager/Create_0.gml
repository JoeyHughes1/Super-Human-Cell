//This will eventually be used for things like audio and music and the camera

paused = false

nervousElectricityTimer = 5
electricityRange = 7

enum CameraState {
	Follow,
	MoveTo,
	Fixed,
	Intro,
	OneDimension,
	Outro,
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

fixCamZone = 0

fixedDimension = 0 //0 for x, 1 for y
fixDimensionZone = 0

outroTargetWidth = 1920
outroWidthStep = 0
outroSmoothness = 10

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
	fixCamZone = zone
}

function oneDimension(camera, zone, dimension) {
	fixedDimension = dimension
	fixDimensionZone = zone
	moveToX = zone.x
	moveToY = zone.y
	moveToSpeed = 7
	camState = CameraState.OneDimension
}