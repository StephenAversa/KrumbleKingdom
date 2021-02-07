if (other.canPickUp == true){
	with (other){
		instance_destroy();	
	}
	global.money++;
}