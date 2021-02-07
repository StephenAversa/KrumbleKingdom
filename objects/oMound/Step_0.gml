event_inherited();
if (active){
	buildObj = instance_create_depth(x,y+sprite_height,1,oBuild);
	buildObj.myObj = myObj;
	StoreMoneyColors();
	instance_destroy(self,0);
}