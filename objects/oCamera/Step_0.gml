#macro view view_camera[0]

if(follow != noone){
	x = lerp(x, follow.x, 0.1)
	y = lerp(y, follow.y, 0.1)
	camera_set_view_pos(view,x-camWidth / 2, y-camHeight / 2)
}