if (drawCost){
	rows = 1;
	tempPaid = paid;
	tempCost = cost;
	height = argument0 + 32;
	center = argument1;
	if (cost > 4){
		rows = ceil(cost/4);
	}else{
		DrawRow(x-24,y-height,cost,4,sprCostIcon,tempPaid)
	}
	
	for (var i = 0; i < rows; i++){
		if (tempCost > 4){
			tempPaid = DrawRow(x-24,y-height + (16 * i),4,4,sprCostIcon,tempPaid);
			tempCost -= 4;
		}else{
			tempPaid = DrawRow(x-24,y-height + (16 * i),tempCost,4,sprCostIcon,tempPaid);	
		}
	}
}

