if(place_meeting(x,y,oPlayer)){
	if(myTextBox == noone){
		myTextBox = instance_create_layer(x - 130,y - 230,"Text", oTextBox)	
		if(indice == 0){
			myTextBox.text = "Pressione as teclas A e D para se mover!"	
		}else if(indice == 1){
			myTextBox.text = "Pressione ESPAÇO para saltar até 3 blocos!"	
		}else if(indice == 2){
			myTextBox.text = "Cuidado com espinhos, eles te eliminam na hora!"
		}else if(indice == 3){
			myTextBox.text = "Você pode não conseguir fazer certos pulos, então precisará usar objetos como caixas para conseguir. Para se transformar na sua alma, se elimine nos espinhos.(Para voltar desse modo, aperte 'F' perto do corpo)"
		}else if(indice == 4){
			myTextBox.text = "Enquanto estiver como alma, você pode voar para qualquer direção."
		}
	}
}else{
	if(myTextBox != noone){
		instance_destroy(myTextBox)
		myTextBox = noone
	}
}