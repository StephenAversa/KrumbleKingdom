ApplyGravity();
onGround = OnGround();

if (vsp != 0){
	if (dir = 1){
		rot += 5;
	}else{
		rot -= 5;	
	}
}

if (hsp < 0){
	hsp +=.25;	
}else if (hsp > 0){
	hsp -=.25;	
}
x += hsp;

