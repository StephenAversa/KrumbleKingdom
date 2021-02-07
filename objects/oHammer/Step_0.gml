if (active = true){
	image_speed = .5;	
}else{
	image_speed = 0;
	image_index = 1;
}
x = myGuy.x;
y = myGuy.y;

if (myGuy.facing == LEFT){
	image_xscale = -1	
}else{
	image_xscale = 1;	
}