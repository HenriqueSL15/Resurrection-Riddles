#region CONTROLES
key_right = keyboard_check(ord("D"))
key_jump = keyboard_check(vk_space)
key_left = keyboard_check(ord("A"))
#endregion

#region MOVIMENTAÇÃO
var move = key_right - key_left

hspd = move * spd

vspd = vspd + grv

//Alteração de Sprites(esquerda e direita)
if(hspd != 0){
	sprite_index = sPlayerWalking
	if(hspd > 0){
		image_xscale = sign(hspd) - 0.7	
	}else{
		image_xscale = sign(hspd) + 0.7	
	}
}else{
	sprite_index = sPlayer	
}

//Colisão Horizontal
if(place_meeting(x + hspd, y,oWall)){
	while(!place_meeting(x+sign(hspd),y,oWall)){
		x += sign(hspd)	
	}
	hspd = 0
}

x = x + hspd

//Colisão Vertical
if(place_meeting(x, y + vspd,oWall)){
	while(!place_meeting(x,y+sign(vspd),oWall)){
		y += sign(vspd)	
	}
	vspd = 0
}

y = y + vspd

//Pulo
if (place_meeting(x,y+1,oWall) and key_jump){
	vspd -= 15	
}

if(!place_meeting(x,y+1,oWall)){
	if(vspd > -5.5){
		sprite_index = sPlayerFalling
	}else{
		sprite_index = sPlayerJumpingStart	
	}
}

/*
if hspd != 0{
	if place_meeting(x,y+1,oWall)	{
		sprite_index = sPlayerWalking	
	}
}
*/
#endregion