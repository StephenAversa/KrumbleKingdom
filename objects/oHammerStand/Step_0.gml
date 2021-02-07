if (distance_to_object(oKing)<1 && active == false){
	drawCost = true;		
}else{
	drawCost = false;	
}

if (paid == cost || global.hammerFull){
	active = true;
}

if (active == true){
	for (var i = 0; i < 4; i ++){
		if (!global.hammerFull){
			if(global.hammerStand[i]) continue;
			paid = 0;
			var hammer = instance_create_depth((x-12)+i*8,y+14,0,oBuyHammer);
			global.hammerStand[i] = true;
			hammer.slot = i;
			global.actionHeld = false;
			active = false;
			if (i == 3){
				global.hammerFull = true;
			}
			exit;
		}
	}
}