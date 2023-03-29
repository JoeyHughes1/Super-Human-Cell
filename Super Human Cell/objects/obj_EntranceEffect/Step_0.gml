image_xscale = clamp(image_xscale - stepX, 0, image_xscale)
image_yscale = clamp(image_yscale - stepY, 0, image_yscale)

if(sprite_width <= 10) instance_destroy()