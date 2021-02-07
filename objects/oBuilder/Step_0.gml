/// @description Insert description here
// You can write your code in this editor

ApplyGravity();
if (instance_exists(myBuilding)){
    mvspd = 1;
    if (distance_to_point(myX, myBuilding.y) > 1){
        if (myX < x){
            hsp = -mvspd;
            facing = LEFT;
        }else{
            hsp = mvspd;
            facing = RIGHT;
        }
		hammer.active = false;
    }else{
        hsp = 0;
        if (myBuilding.x < x){
            facing = LEFT;
        }else{
            facing = RIGHT;
        }
        image_index = 0;
        image_speed = 0;
        hammer.active = true;
        myBuilding.building = true;
    }
    if (worker1 == true) {
		if (myBuilding.name == "stalag"){
			if (facing == LEFT){
	            myX = myBuilding.x2;
	        }else{
	            myX = myBuilding.x1;
	        }
		}else{
	        if (facing == LEFT){
	            myX = myBuilding.x1 - 12;
	        }else{
	            myX = myBuilding.x1;
	        }
		}
    }else{
        if (facing == LEFT){
            myX = myBuilding.x2-16;
        }else{
            myX = myBuilding.x2;
        }
    }
}else{
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
    hammer.active = false;
    isWorking = false;
    worker1 = false;
    worker2 = false;
}
x = x + hsp;

