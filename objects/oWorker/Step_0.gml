ApplyGravity();

if (instance_exists(oBuyParent)){
	mvspd = 1;
	var buyMe = oBuyParent;
	if (distance_to_object(buyMe) < 200){
		seek = true;
		if (buyMe.x < x){
			hsp = -mvspd;
			facing = LEFT;	
		}else{
			hsp = mvspd;
			facing = RIGHT;	
		}
	}
}else{
	seek = false;	
}
if (!seek){
	if (distance_to_object(global.home) < 200){
		mvspd = .5;
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
	}else{
		mvspd = .5;
		if (global.home.x < x){
			hsp = -mvspd;
			facing = LEFT;	
			dir = LEFT;	
		}else{
			hsp = mvspd;
			facing = RIGHT;	
			dir = RIGHT;
		}
	}
	
}
x = x + hsp;