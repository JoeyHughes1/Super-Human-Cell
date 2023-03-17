vel_x *= 0.86
vel_y *= 0.86
x += vel_x
y += vel_y
image_angle += vel_ang
image_xscale = 5 * (1-image_index/4)
image_yscale = 5 * (1-image_index/4)