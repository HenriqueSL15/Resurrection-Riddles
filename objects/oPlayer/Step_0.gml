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
move = key_right - key_left
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

// Moving platform collision
var _movingPlatform = instance_place(x, y + max(1, vspd), oMovingPlatform);
show_debug_message(place_meeting(x,y+1,oMovingPlatform))
if (_movingPlatform != -4) {
	// Pixel-perfect collisions
	if (vspd > 0) {
		while (!place_meeting(x, y + sign(vspd), oMovingPlatform)) {
			y += sign(vspd);
		}
		vspd = 0; // So the gravity is reset too
	}
	
	// Add velocity
	hspd += _movingPlatform.moveX;
	vspd += _movingPlatform.moveY;
}

if (alive){
	//Colisão Horizontal
	if(place_meeting(x + hspd, y,[oCollisionBox,oCollisionComponents,oCollisionBrokenBox])){
		while(!place_meeting(x+sign(hspd),y,[oCollisionBox,oCollisionComponents,oCollisionBrokenBox])){
			x += sign(hspd)	
		}
		hspd = 0
	}

	x = x + hspd

	//Colisão Vertical
	if(place_meeting(x, y + vspd,[oCollisionBox,oCollisionComponents,oCollisionBrokenBox])){
		while(!place_meeting(x,y+sign(vspd),[oCollisionBox,oCollisionComponents,oCollisionBrokenBox])){
			y += sign(vspd)	
		}
		vspd = 0
	}

	y = y + vspd
	
	hspd = move * spd

	vspd = vspd + grv

	if(pressFExists){
		layer_sequence_destroy(pressF)
		pressFExists = false
	}

	//Pulo
	if (place_meeting(x,y+1,[oCollisionBox, oCollisionComponents,oCollisionBrokenBox]) && key_jump){
		vspd -= 15	
	}

	if(!place_meeting(x,y+1,[oCollisionBox, oCollisionComponents,oCollisionBrokenBox])){
		vspd = vspd + grv
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
	//Colisão Horizontal
	if(place_meeting(x + hspd, y,[oCollisionBox,oCollisionComponents])){
		while(!place_meeting(x+sign(hspd),y,[oCollisionBox,oCollisionComponents])){
			x += sign(hspd)	
		}
		hspd = 0
	}

	x = x + hspd

	//Colisão Vertical
	if(place_meeting(x, y + vspd,[oCollisionBox,oCollisionComponents])){
		while(!place_meeting(x,y+sign(vspd),[oCollisionBox,oCollisionComponents])){
			y += sign(vspd)	
		}
		vspd = 0
	}

	y = y + vspd
	falling = false
	hspd = move * spd
	vspd = moveY * spd
	
	
	
	if(!pressFExists){
		pressF = layer_sequence_create("Sequences",x,y - 200,seqPressKeyF)
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