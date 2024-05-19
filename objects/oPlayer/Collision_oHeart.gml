layer_sequence_create("Sequences",other.x,other.y,seqHeartCollision)
instance_destroy(other)
heartsObtained += 1

if(heartsObtained == 1){
	var text = instance_create_layer(x,y,"Text",oTextBox)
	text.text = "Seu objetivo é pegar os corações ao final de cada fase, para então, voltar a ser humano."
}