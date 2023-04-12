if(timer < 1) exit
if(skippable) room_goto(Respiratory)
if(!skipButtonShown) {
	skipButtonShown = true
	alarm[0] = room_speed
}