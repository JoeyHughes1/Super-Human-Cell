/// @description Pausing
// This resets all the controls or reactivates them
if(obj_pauseManager.gamePaused) { // The game is in the process of unpausing
	if(keyboard_check(ord("A"))) event_perform(ev_keyboard, ord("A")) else event_perform(ev_keyrelease, ord("A"))
	if(keyboard_check(ord("D"))) event_perform(ev_keyboard, ord("D")) else event_perform(ev_keyrelease, ord("D"))
	if(keyboard_check(vk_space)) event_perform(ev_keyboard, vk_space) else event_perform(ev_keyrelease, vk_space)
}