if(state){
	if(oLever.port == 0){
		with (oWall){
			if(port == 0){
				if(y > prevY - 250){
					y -= 6
				}
			}
		}
	}
		
}else if(!state){
	if(oLever.port == 0){
		with (oWall){
			if(port == 0){
				if(y < prevY){
					vspd = vspd + grav

					if(place_meeting(x, y + vspd,oCollisionComponents)){
						while(!place_meeting(x,y+sign(vspd),oCollisionComponents)){
							y += sign(vspd)	
						}
						vspd = 0
					}

					y = y + vspd

				}else{
					vspd = 0	
				}
			}
		}
	}
}