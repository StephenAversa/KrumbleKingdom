if (building == true){
	if (buildPercent <= 0){
		instance_create_depth(x,y,0,myObj);
		instance_destroy();
		UpdateFarthestBarrier();
	}else if (canBuild){
		if (place_meeting(x1,y,oBuilder) && (place_meeting(x2,y,oBuilder))){
			buildPercent -= buildSpeed*2;
		}else if (place_meeting(x1,y,oBuilder)){
			buildPercent -= buildSpeed;	
		}

	if (buildPercent > 66){
		image_index = 0;
	}else if (buildPercent > 33){
		image_index = 1;	
	}else{
		image_index = 2;	
	}
	alarm[0] = 10;
	canBuild = false;
	}
}

if (y > stopPoint){
	y-=2;	
}