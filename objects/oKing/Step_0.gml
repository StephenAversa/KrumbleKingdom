PlayerMovement();

if (distance_to_object(oBuyThis)<1 || distance_to_object(oStalagmite)<4){
	shopObj = instance_nearest(x,y,oBuyThis);
	tempShopObj = instance_nearest(x,y,oStalagmite);
	if (distance_to_object(tempShopObj) < distance_to_object(shopObj)){
		shopObj = tempShopObj;
	}
	if (global.actionHeld && shopObj.active = false){
		if (global.money > 0 && canPay){
			shopObj.paid++;
			shopObj.drawTrigger = true;
			global.money--;
			canPay = false;
			alarm[0] = 20;
		}
	}
	if (!global.actionHeld){
		global.money += shopObj.paid;
		shopObj.paid = 0;
		StoreMoneyColors();
	}
}