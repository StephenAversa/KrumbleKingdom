/// @description Insert description here
// You can write your code in this editor

if (home.x < x){
	draw_sprite_ext(sprWalls,2,x,y,1,1,0,c_white,1);
}else{
	draw_sprite_ext(sprWalls,2,x,y,-1,1,0,c_white,1);
}