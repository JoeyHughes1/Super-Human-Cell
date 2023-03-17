if(other.Triggered) exit;
other.Triggered = true
if(instance_exists(GuideDialogueBubble)) {
	instance_destroy(GuideDialogueBubble)
}
instance_create_layer(Player.x, Player.y, "Characters", GuideDialogueBubble)
GuideDialogueBubble.textArray = other.Dialogue
GuideDialogueBubble.textArray[0] = StringWrap(GuideDialogueBubble.textArray[0], GuideDialogueBubble.textWidth, Dialogue_Font)