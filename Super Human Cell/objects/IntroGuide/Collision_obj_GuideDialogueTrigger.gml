if(other.Triggered) exit;
other.Triggered = true

//Override any dialogue bubbles that are currently being played
if(instance_exists(GuideDialogueBubble)) {
	instance_destroy(GuideDialogueBubble)
}

//Create the dialogue bubble object
instance_create_layer(x, y, "Characters", GuideDialogueBubble)
GuideDialogueBubble.textArray = other.Dialogue
GuideDialogueBubble.textArray[0] = StringWrap(GuideDialogueBubble.textArray[0], GuideDialogueBubble.textWidth, Dialogue_Font)
if(other.Huge) {
	GuideDialogueBubble.font = Dialogue_Font_Huge
	GuideDialogueBubble.textWidth *= 2.5
}