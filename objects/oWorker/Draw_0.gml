if (hsp = 0){
	if (facing == LEFT){
		draw_sprite_ext(sprWorker,0,floor(x),y,-1,1,0,c_white,1);
	}else{
		draw_sprite_ext(sprWorker,0,floor(x),y,1,1,0,c_white,1);
	}
}else{
	if (hsp < 0){
		draw_sprite_ext(sprWorker,-1,floor(x),y,-1,1,0,c_white,1);
		image_speed=.4;
	}else{
		draw_sprite_ext(sprWorker,-1,floor(x),y,1,1,0,c_white,1);
		image_speed=.4;
	}
}