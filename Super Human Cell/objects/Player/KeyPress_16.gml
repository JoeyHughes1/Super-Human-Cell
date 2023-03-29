if(!movementAllowed) exit;
if(!dashable) exit;
if(dashCooldown > 0) exit;
if(dash_count <= 0) exit;
dash = true
forcedLowGravity = true
dashCooldown = dashCooldownLength