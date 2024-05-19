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
					show_debug_message("falso")
					y += 6
				}
			}
		}
	}
}