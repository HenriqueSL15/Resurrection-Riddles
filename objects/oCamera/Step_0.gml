#macro view view_camera[0]

if(follow != noone){
	show_debug_message(follow.move)
	if(follow.image_xscale < 0){
		if(offset > -128){
			offset-=10
		}
	}else{
		if(offset < 128){
			offset+=10
		}
	}
	x = lerp(x, follow.x + offset, 0.1)
	y = lerp(y, follow.y, 0.1)
	camera_set_view_pos(view,x-camWidth / 2, y-camHeight / 2)
}