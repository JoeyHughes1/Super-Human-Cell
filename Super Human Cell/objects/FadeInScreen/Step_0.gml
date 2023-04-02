/// @description Insert description here
// You can write your code in this editor

if(fade) image_alpha = clamp(image_alpha - 0.025, 0, 1);

if(image_alpha <= 0) {
	instance_destroy()
}