// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_push(){
if(place_meeting(x+hspd / 2, y, oCrate)){
	var block = instance_place(x+hspd / 2, y, oCrate)
	with(block){
		scr_move(oPlayer.hspd / 2, 0)
	}
	hspd /= 2
}
}