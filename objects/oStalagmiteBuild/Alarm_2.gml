alarm[2] = random_range(250,350);
with (instance_create_depth(x,y-12,1,oGem)){
	var dirBuilder = instance_nearest(x,y,oBuilder);
	if (dirBuilder.x < x){
		hsp = choose(-5,-6,-7,-8);
		vsp = choose(-5,-6,-7,-8);
	}else{
		hsp = choose(5,6,7,8);
		vsp = choose(-5,-6,-7);
	}
}