if(other.Triggered) exit;
other.Triggered = true
if(instance_exists(GuideDialogueBubble)) {
	instance_destroy(GuideDialogueBubble)
}
instance_create_layer(x, y, "Instances", GuideDialogueBubble)
GuideDialogueBubble.image_xscale = image_xscale/10
GuideDialogueBubble.image_yscale = image_yscale/10
GuideDialogueBubble.textArray = other.Dialogue
GuideDialogueBubble.textArray[0] = StringWrap(GuideDialogueBubble.textArray[0], GuideDialogueBubble.textWidth)