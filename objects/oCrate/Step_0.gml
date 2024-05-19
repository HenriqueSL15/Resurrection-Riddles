vspd = vspd + grv

if(place_meeting(x, y + vspd,oCollisionBox)){
	while(!place_meeting(x,y+sign(vspd),oCollisionBox)){
		y += sign(vspd)	
	}
	vspd = 0
}

y = y + vspd