if (distance_to_object(oKing)<5 && active == false){
	drawCost = true;		
}else{
	drawCost = false;	
}

if (paid == cost){
	active = true;
}

if (active == true){
	instance_create_depth(x,y,1,oStalagmiteBuild);
	instance_destroy(self,0);
}
