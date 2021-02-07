if (distance_to_object(oKing)<1 && active == false){
	drawCost = true;		
}else{
	drawCost = false;	
}

if (paid == cost || global.bowFull){
	active = true;
}

if (active == true){
	for (var i = 0; i < 4; i ++){
		if (!global.bowFull){
			if(global.bowStand[i]) continue;
			paid = 0;
			var hammer = instance_create_depth((x-12)+i*8,y+14,0,oBuyBow);
			global.bowStand[i] = true;
			hammer.slot = i;
			global.actionHeld = false;
			active = false;
			if (i == 3){
				global.bowFull = true;
			}
			exit;
		}
	}
}