/// @description Logos in the top right

var ww = defaultWidth
var wh = defaultHeight
var logoOffset = 7
var alpha = 0.9
if(!instance_exists(Player)) exit;
var relativeXRight = (Player.x + (Player.sprite_width * sign(Player.image_xscale))/2 - camera_get_view_x(obj_gameManager.currentCam))/camera_get_view_width(obj_gameManager.currentCam) * ww
var relativeYTop = (Player.y - Player.sprite_height/2 - camera_get_view_y(obj_gameManager.currentCam))/camera_get_view_height(obj_gameManager.currentCam) * wh
switch(room) {
	case Respiratory:
		draw_sprite_ext(RespiratoryLogo, 0, ww - logoOffset, 0, 1.5, 1.5, 0, -1, alpha)
		break
	case Nervous:
		//Logo is 216 x 61
		if(relativeXRight > ww - logoOffset - 216 * 2.5 &&
			relativeYTop < logoOffset + 61 * 2.5) {
			alpha = 0.3
		}
		draw_sprite_ext(NervousLogo, 0, ww - logoOffset, logoOffset, 2.5, 2.5, 0, -1, alpha)
		break
	default:
		break
}