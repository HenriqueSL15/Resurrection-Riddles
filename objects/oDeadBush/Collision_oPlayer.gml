if (other.alive && !other.timer){
	other.alive = false	
	if (!instance_exists(oPlayerBody)){
		var floorInstance = instance_nearest(x,y+1,oCollisionBox)
		if(id != inst_C44ED1A){
			instance_create_layer(other.x,floorInstance.y - 15,"Instances",oPlayerBody)	
		}else if(id == inst_C44ED1A){
			instance_create_layer(other.x,floorInstance.y - 300,"Instances",oPlayerBody)	
		}
	}
}