if (hsp = 0){
	if (facing == LEFT){
		draw_sprite_ext(sprBuilder,0,x,y,-1,1,0,c_white,1);
	}else{
		draw_sprite_ext(sprBuilder,0,x,y,1,1,0,c_white,1);
	}
}else{
	if (hsp < 0){
		draw_sprite_ext(sprBuilder,-1,x,y,-1,1,0,c_white,1);
		if (instance_exists(myBuilding)){
			image_speed=.4;
		}else{
			image_speed=.2;
		}
	}else{
		draw_sprite_ext(sprBuilder,-1,x,y,1,1,0,c_white,1);
		if (instance_exists(myBuilding)){
			image_speed=.4;
		}else{
			image_speed=.2;
		}
	}
}