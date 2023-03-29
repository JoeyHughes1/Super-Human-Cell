inverseAspectRatio = defaultHeight/defaultWidth
currentCam = defaultCam
camCenterX = camera_get_view_x(currentCam) + camera_get_view_width(currentCam)/2;
camCenterY = camera_get_view_y(currentCam) + camera_get_view_height(currentCam)/2;


switch(camState) {
	case CameraState.Follow:
		var camWidth = camera_get_view_width(currentCam)
		var camHeight = camera_get_view_height(currentCam)
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
	case CameraState.OneDimension:
		if(!fixDimensionZone.collidingWithPlayer()) {
			camState = CameraState.Follow
		}
		var camX = camera_get_view_x(currentCam)
		var camY = camera_get_view_y(currentCam)
		var camWidth = camera_get_view_width(currentCam)
		var camHeight = camera_get_view_height(currentCam)
		if(fixedDimension == 0) { // X is fixed, moving up and down
			var idealWidth = fixDimensionZone.sprite_width
			
			//Make sure we are at the right x and width and height
			if(abs(camX - moveToX) > 0.1 ||  
				abs(camWidth - idealWidth) > 0.1 || 
				abs(camHeight - (inverseAspectRatio * idealWidth)) > 0.1) {
				camera_set_view_size(currentCam, 
					camWidth + (idealWidth - camWidth)/	moveToSpeed, 
					camHeight + (inverseAspectRatio * idealWidth - camHeight)/moveToSpeed)
				camera_set_view_pos(currentCam, 
					camX + (moveToX - camX)/moveToSpeed, 
					camY)
			}
			
			//Follow the y value
			camera_set_view_speed(currentCam, 
			0, 
			clamp(power(abs(Player.y - camCenterY), 1.65)/350, 0, 500));
		} else { // Y is fixed, moving left and right
			var idealHeight = fixDimensionZone.sprite_height
			
			//Make sure we are at the right y and width and height
			if(abs(camY - moveToY) > 0.1 || 
				abs(camWidth - (idealHeight / inverseAspectRatio)) > 0.1 || 
				abs(camHeight - idealHeight) > 0.1) {
				camera_set_view_size(currentCam, 
					camWidth + ((idealHeight / inverseAspectRatio) - camWidth)/moveToSpeed, 
					camHeight + (idealHeight - camHeight)/moveToSpeed)
				camera_set_view_pos(currentCam,
					camX, 
					camY + (moveToY - camY)/moveToSpeed)
			}
			
			//Follow the x value
			camera_set_view_speed(currentCam, 
			clamp(abs(Player.x - camCenterX)/5, 1, 500), 
			0);
		}
		break
	case CameraState.MoveTo:
		if(!fixCamZone.collidingWithPlayer()) {
			camState = CameraState.Follow
		}
		var camX = camera_get_view_x(currentCam)
		var camY = camera_get_view_y(currentCam)
		var camWidth = camera_get_view_width(currentCam)
		var camHeight = camera_get_view_height(currentCam)
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
	case CameraState.Intro:
		var camWidth = camera_get_view_width(currentCam)
		var newWidth = camWidth + clamp((defaultWidth - camWidth)/20, 1, 200)
		if(abs(newWidth - defaultWidth) < 2) {
			camera_set_view_size(currentCam, defaultWidth, defaultHeight)
			camState = CameraState.Follow
			Player.movementAllowed = true
			//instance_create_layer(0, 0, "GUI", RespiratoryGUI)
		}
		camera_set_view_size(currentCam, newWidth, newWidth * inverseAspectRatio)
		break
	case CameraState.Outro:
		var camX = camera_get_view_x(currentCam)
		var camY = camera_get_view_y(currentCam)
		var camWidth = camera_get_view_width(currentCam)
		var camHeight = camera_get_view_height(currentCam)
		var targetX = obj_EndOfLevel.x - outroTargetWidth/2
		var targetY = obj_EndOfLevel.y - (outroTargetWidth * inverseAspectRatio	)/2
		if(abs(camX - targetX) > 0.1 || 
			abs(camY - targetY) > 0.1) {
			camera_set_view_pos(currentCam, 
				camX + (targetX - camX)/outroSmoothness, 
				camY + (targetY - camY)/outroSmoothness)
		}
		camera_set_view_size(currentCam, 
			outroTargetWidth, 
			inverseAspectRatio * outroTargetWidth)
		outroTargetWidth -= outroWidthStep
		outroSmoothness = clamp(outroSmoothness - 1.5, 1.2, 10)
	default:
		break
}