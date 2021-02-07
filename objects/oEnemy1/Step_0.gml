/// @description Insert description here
// You can write your code in this editor 
ApplyGravity();
grounded = OnGround();
if (instance_number(oFirePit) > 0){
    attackObj = oFirePit;
    
    if (distance_to_object(oRubbleWall) > irandom_range(25,35) && canAttack){
        if (attackObj.x < x){
            facing = LEFT;
            state = MOVE;
            mvSpd = -1.5;
        }else{
            facing = RIGHT;
            state = MOVE;
            mvSpd = -1.5;
        }
    }else{
        if (canAttack){
            canAttack = false;
            if (facing == LEFT){
                vsp = -3;
                mvSpd = -4;
            }
			alarm[0] = irandom_range(15,30) + 50;
        }
        if (place_meeting(x+mvSpd, y, oRubbleWall)){
            mvSpd = mvSpd * -1;
        }
		if (!grounded){
			mvSpd -= sign(mvSpd) * .2;	
		}
    }
    x += mvSpd;
}
