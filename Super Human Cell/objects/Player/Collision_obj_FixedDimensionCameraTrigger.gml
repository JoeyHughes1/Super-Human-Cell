if(obj_gameManager.camState != CameraState.Fixed && obj_gameManager.camState != CameraState.MoveTo && obj_gameManager.camState != CameraState.OneDimension) {
	obj_gameManager.oneDimension(view_camera[0], other, other.dimension)
}