ApplyGravity();
	mvspd = .5;
if (!defend){
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
	if (x < defensePoint){
		hsp = mvspd;
		facing = RIGHT;
	}else if (x > defensePoint){
		hsp = -mvspd;
		facing = LEFT;
	}else{
		hsp = 0;
		facing = RIGHT;
	}
}
x = x + hsp;