if(!gamePaused) {
	if(obj_gameManager.camState == CameraState.Intro || obj_gameManager.camState == CameraState.Outro) exit
	
	//Create a game screenshow background
	surface_copy(screenshot, 0, 0, application_surface)
	
	defaultWidth = obj_gameManager.defaultWidth
	defaultHeight = obj_gameManager.defaultHeight
	
	//Create menu buttons
	var camCenterX = camera_get_view_x(obj_gameManager.currentCam) + camera_get_view_width(obj_gameManager.currentCam)/2
	var camYTop = camera_get_view_y(obj_gameManager.currentCam) + camera_get_view_height(obj_gameManager.currentCam)/3
	var camYBot = camera_get_view_y(obj_gameManager.currentCam) + 2*camera_get_view_height(obj_gameManager.currentCam)/3
	instance_create_depth(camCenterX, camYTop, 0, MainMenuPauseButton)
	instance_create_depth(camCenterX, camYBot, 0, ResumePauseButton)
	MainMenuPauseButton.rescale(5 * camera_get_view_width(obj_gameManager.currentCam)/obj_gameManager.defaultWidth, 5 * camera_get_view_width(obj_gameManager.currentCam)/obj_gameManager.defaultWidth)
	ResumePauseButton.rescale(5 * camera_get_view_width(obj_gameManager.currentCam)/obj_gameManager.defaultWidth, 5 * camera_get_view_width(obj_gameManager.currentCam)/obj_gameManager.defaultWidth)
	
	//Pause all objects
	instance_deactivate_all(true)
	
	//Reactivate all objects that need to be active
	instance_activate_object(MainMenuPauseButton)
	instance_activate_object(ResumePauseButton)
	gamePaused = true
} else {
	unPause()
}