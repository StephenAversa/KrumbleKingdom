if (other.canPickUp){
	with(other){
		instance_destroy(self,false);
	}
	instance_change(oWorker,true);
}