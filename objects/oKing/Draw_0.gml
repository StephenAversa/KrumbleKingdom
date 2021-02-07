if (hsp = 0){
	if (global.playerDir == LEFT){
		draw_sprite_ext(sprKing,0,x,y,-1,1,0,c_white,1);
	}else{
		draw_sprite_ext(sprKing,0,x,y,1,1,0,c_white,1);
	}
}else{
	if (hsp < 0){
		draw_sprite_ext(sprKing,-1,x,y,-1,1,0,c_white,1);
	}else{
		draw_sprite_ext(sprKing,-1,x,y,1,1,0,c_white,1);
	}
}