// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move(spdX,spdY){
var hspd= spdX;
var vspd = spdY;

//move()
/// horizotall movement
if (place_meeting(x+hspd,y ,oCollisionBox))
{
while(!place_meeting(x+sign(hspd),y ,oCollisionBox))
{
x+=sign(hspd);
}
hspd=0;
}
if(place_meeting(x+oCrate.sprite_width,y ,oCollisionBox)&&place_meeting(x+hspd,y,oCrate))
{
	hspd=0;
}
if(place_meeting(x-oCrate.sprite_width,y ,oCollisionBox)&&place_meeting(x+hspd,y,oCrate))
{
	hspd=0;
}
x+=hspd;

}