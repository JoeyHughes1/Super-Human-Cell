inverseAspectRatio = 1080/1920
currentCam = view_camera[0]
camCenterX = camera_get_view_x(currentCam) + camera_get_view_width(currentCam)/2;
camCenterY = camera_get_view_y(currentCam) + camera_get_view_height(currentCam)/2;


switch(camState) {
	case CameraState.Follow:
		camWidth = camera_get_view_width(currentCam)
		camHeight = camera_get_view_height(currentCam)
		if(abs(camWidth - defaultWidth) > 0.1 || abs(camHeight - defaultHeight) > 0.1) {
			camera_set_view_size(currentCam, 
				camWidth + (defaultWidth - camWidth)/defaultTweenSpeed, 
				camHeight + (defaultHeight - camHeight)/defaultTweenSpeed)
		}
		camera_set_view_speed(currentCam, 
			clamp(abs(Player.x - camCenterX)/5, 1, 500), 
			clamp( power(abs(Player.y - camCenterY), 1.5)/350, 0, 500));
		break
	case CameraState.Fixed:
		if(!fixCamZone.collidingWithPlayer()) {
			camState = CameraState.Follow
		}
		break
	case CameraState.MoveTo:
		if(!fixCamZone.collidingWithPlayer()) {
			camState = CameraState.Follow
		}
		camX = camera_get_view_x(currentCam)
		camY = camera_get_view_y(currentCam)
		camWidth = camera_get_view_width(currentCam)
		camHeight = camera_get_view_height(currentCam)
		if(abs(camX - moveToX) > 0.1 || 
			abs(camY - moveToY) > 0.1 || 
			abs(camWidth - moveToWidth) > 0.1 || 
			abs(camHeight - (inverseAspectRatio * moveToWidth)) > 0.1) {
			camera_set_view_size(currentCam, 
				camWidth + (moveToWidth - camWidth)/moveToSpeed, 
				camHeight + (inverseAspectRatio * moveToWidth - camHeight)/moveToSpeed)
			camera_set_view_pos(currentCam, 
				camX + (moveToX - camX)/moveToSpeed, 
				camY + (moveToY - camY)/moveToSpeed)
		} else {
			camState = CameraState.Fixed
		}
		break
	default:
		break
}