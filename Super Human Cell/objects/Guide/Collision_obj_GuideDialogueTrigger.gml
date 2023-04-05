if(other.Triggered) exit;
other.Triggered = true

//Override any dialogue bubbles that are currently being played
if(instance_exists(GuideDialogueBubble)) {
	instance_destroy(GuideDialogueBubble)
}

//Add the dialogue to the history
for(var i = 0; i < array_length(other.Dialogue); i++) {
	array_push(obj_pauseManager.dialogueHistory, StringWrap(string(i + 1) + ". " + other.Dialogue[i], obj_pauseManager.historyWidth, Dialogue_Font_Smaller))
}
array_push(obj_pauseManager.dialogueHistory, "----------")

//Create the dialogue bubble object
instance_create_layer(Player.x, Player.y, "Characters", GuideDialogueBubble)
GuideDialogueBubble.textArray = other.Dialogue
GuideDialogueBubble.textArray[0] = StringWrap(GuideDialogueBubble.textArray[0], GuideDialogueBubble.textWidth, Dialogue_Font)