instance_create_layer(x, y, "Characters", Player_endOfLevel)
obj_gameManager.camState = CameraState.Outro
Guide.targetPlayer = Player_endOfLevel
instance_destroy()
if(instance_exists(GuideDialogueBubble)) instance_destroy(instance_find(GuideDialogueBubble, 0))