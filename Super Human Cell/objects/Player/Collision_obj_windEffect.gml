vel_y -= other.windStrength * dcos(other.image_angle)
vel_x -= other.windStrength * dsin(other.image_angle)
show_debug_message(other.image_angle)