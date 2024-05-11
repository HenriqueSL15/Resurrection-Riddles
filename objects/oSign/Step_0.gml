if(place_meeting(x,y,oPlayer)){
	if(myTextBox == noone){
		myTextBox = instance_create_layer(x - 130,y - 230,"Text", oTextBox)	
		if(indice == 0){
			myTextBox.text = "Pressione as teclas A e D para se mover!"	
		}else if(indice == 1){
			myTextBox.text = "Pressione ESPAÇO para saltar até 3 blocos!"	
		}
	}
}else{
	if(myTextBox != noone){
		instance_destroy(myTextBox)
		myTextBox = noone
	}
}