if(b < 30){
	b++
}else{
	if(up){
		up = false
	}else{
		up = true	
	}
	b = 0
}
if(up){
	y -= 0.5
}else{
	y += 0.5
}