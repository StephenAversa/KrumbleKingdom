instance_change(oBuilder,1);
global.hammerFull = false;
with (other){
	global.hammerStand[slot] = false;
	instance_destroy(self,0);
}