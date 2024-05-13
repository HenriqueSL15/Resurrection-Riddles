if(place_meeting(x,y,oPlayerBody) && !alive){
	alive = true
	instance_destroy(oPlayerBody)
	timer = true
}