instance_change(oArcher,1);
global.bowFull = false;
with (other){
	global.bowStand[slot] = false;
	instance_destroy(self,0);
}