/// @description Insert description here
// You can write your code in this editor
if (mvSpd = 0){
	if (facing == LEFT){
		draw_sprite_ext(sprEnemy1,0,floor(x),y,-1,1,0,c_white,1);
	}else{
		draw_sprite_ext(sprEnemy1,0,floor(x),y,1,1,0,c_white,1);
	}
}else{
	if (mvSpd < 0){
		draw_sprite_ext(sprEnemy1,-1,floor(x),y,-1,1,0,c_white,1);
		image_speed=.4;
	}else{
		draw_sprite_ext(sprEnemy1,-1,floor(x),y,1,1,0,c_white,1);
		image_speed=.4;
	}
}