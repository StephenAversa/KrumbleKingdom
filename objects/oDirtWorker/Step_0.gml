ApplyGravity();
myGem = instance_nearest(x,y,oGem);

if (!seek){
	if (dir == RIGHT){
		hsp = mvspd;
		facing = RIGHT;
	}else if (dir == LEFT){
		hsp = -mvspd;
		facing = LEFT;
	}else{
		hsp = 0;	
	}
	if (CheckTurnAround(hsp)){
		if (dir == RIGHT){
			dir = LEFT;	
		}else{
			dir = RIGHT;	
		}
	}
}

if (distance_to_object(myGem) < 50){
	seek = true;
	if (instance_exists(myGem) && !place_meeting(x,y,myGem) && myGem.onGround){
		if (myGem.x > x){
			hsp = mvspd+.25;
			facing = RIGHT;
		}else{
			hsp = -mvspd;
			facing = LEFT;	
		}
	}
}else{
	seek = false;	
}


if (place_meeting(x+hsp,y,oSolid)){
	while (!place_meeting(x+sign(hsp),y,oSolid)){
		x = x + sign(hsp);	
	}
	hsp = 0;
}
x = x + hsp;

