if (other.alive && !other.timer){
	other.alive = false	
	if (!instance_exists(oPlayerBody)){
		if(place_meeting(x,y + 1, [oCollisionBox,oCollisionComponents])){
			var floorInstance = instance_nearest(x,y+1,oCollisionBox)
			instance_create_layer(other.x,floorInstance.y - 5,"Instances",oPlayerBody)	
		}
	}
}