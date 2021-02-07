if (building == true){
	if (buildPercent <= 0){
	instance_create_depth(x,y,1,oStalagmiteFall);
	instance_create_depth(x,y-12,1,oGem);
	instance_destroy(self,0);
	}else if (canBuild){
		if (place_meeting(x1,y,oBuilder)) || (place_meeting(x2,y,oBuilder)){
			buildPercent -= buildSpeed;	
		}
	alarm[0] = 10;
	canBuild = false;
	}
	
}
