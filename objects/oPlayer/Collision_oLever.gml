if(keyboard_check_pressed(ord("E"))){
if(other.image_index == 0){
	other.image_index = 1
	other.state = true
}else if(other.image_index == 1){
	other.image_index = 0	
	other.state = false
}
}