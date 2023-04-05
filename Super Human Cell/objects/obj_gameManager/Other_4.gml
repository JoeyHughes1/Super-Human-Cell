collisionTilemap = layer_tilemap_get_id("Collision_Tiles");
killTilemap = layer_tilemap_get_id("Kill_Tiles")
camState = CameraState.Intro
Player.movementAllowed = false
camera_set_view_speed(defaultCam, -1, -1)
camera_set_view_size(defaultCam, 0, 0)
camera_set_view_pos(defaultCam, Player.x, Player.y)