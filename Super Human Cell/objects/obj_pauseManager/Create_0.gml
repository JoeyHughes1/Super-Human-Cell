gamePaused = false
screenshot = surface_create(browser_width, browser_height)

//Holds all the dialogue the Guide has said, shown in the pause menu
ww = obj_gameManager.defaultWidth
wh = obj_gameManager.defaultHeight
dialogueHistory = []
historyWidth = obj_gameManager.defaultWidth/5
historyGap = (3/108) * obj_gameManager.defaultHeight

defaultWidth = 0
defaultHeight = 0

surface_set_target(screenshot);
draw_clear_alpha(c_black, 0);
surface_reset_target();

function unPause() {
	//Reset Game Background Surface
	surface_set_target(screenshot)
	draw_clear_alpha(c_black, 0)
	surface_reset_target()
	
	//Destroy the menu
	instance_destroy(instance_find(MainMenuPauseButton, 0))
	instance_destroy(instance_find(ResumePauseButton, 0))
	
	//Unpause all objects
	instance_activate_all()
	with(Player) {event_user(15)}
	gamePaused = false
}