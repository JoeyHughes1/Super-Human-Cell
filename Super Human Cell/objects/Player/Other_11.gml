/// @description Make fading player at position
var fader = instance_create_layer(x, y, "Characters", FadingPlayer)
fader.sprite_index = sprite_index
fader.image_xscale = image_xscale
fader.image_yscale = image_yscale
fader.image_blend = c_red