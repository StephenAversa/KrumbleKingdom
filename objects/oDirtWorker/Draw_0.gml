if (hsp = 0){
	if (facing == LEFT){
		draw_sprite_ext(sprDirtWorker,0,round(x),y,-1,1,0,c_white,1);
	}else{
		draw_sprite_ext(sprDirtWorker,0,round(x),y,1,1,0,c_white,1);
	}
}else{
	if (hsp < 0){
		draw_sprite_ext(sprDirtWorker,-1,round(x),y,-1,1,0,c_white,1);
		image_speed=.2;
	}else{
		draw_sprite_ext(sprDirtWorker,-1,round(x),y,1,1,0,c_white,1);
		image_speed=.2;
	}
}