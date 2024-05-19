scr_push()
if (alive){
	image_alpha = 1
}else{
	image_alpha = 0.5
}
#region CONTROLES
key_right = keyboard_check(ord("D"))
key_jump = keyboard_check(vk_space)
key_up = keyboard_check(ord("W"))
key_down = keyboard_check(ord("S"))
key_left = keyboard_check(ord("A"))
#endregion


#region MOVIMENTAÇÃO
var move = key_right - key_left
var moveY = key_down - key_up

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


if (alive){
hspd = move * spd

vspd = vspd + grv

if(pressFExists){
	layer_sequence_destroy(pressF)
	pressFExists = false
}

//Pulo
if (place_meeting(x,y+1,oWall) and key_jump){
	vspd -= 15	
}

if(!place_meeting(x,y+1,oWall)){
	falling = true
	if(vspd > -5.5){
		sprite_index = sPlayerFalling
	}else{
		sprite_index = sPlayerJumpingStart	
	}
}else{
	falling = false	
}
}else{
	falling = false
	hspd = move * spd
	vspd = moveY * spd
	
	if(!pressFExists){
		pressF = layer_sequence_create("Sequences",x,y - 250,seqPressKeyF)
		pressFExists = true
	}
}

if(timer){
	if(i < 120){
		i++
	}else{
		timer = false
		i = 0
	}
}
#endregion