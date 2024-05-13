if (other.alive && !other.timer){
	other.alive = false	
	if (!instance_exists(oPlayerBody)){
		instance_create_layer(other.x,other.y,"Instances",oPlayerBody)	
	}
}