x = myGuy.x;
y = myGuy.y;
//rot = point_direction(x,y,mouse_x,mouse_y)- 40;

if (instance_exists(oEnemyParent) && distance_to_object(oEnemyParent) < 125){
	if (canShoot){
		canShoot = false;
		var vSpeed;
		with(instance_create_depth(x,y-1,1,oArrow)){
			var target = instance_nearest(x,y,oEnemyParent);
			//var _d = target.x - x;
			var _d = target.x - x;
			var _g = global.grav;
			var _v = _d/sqrt(2*abs(_d)/_g) + random_range(-.3,.3);

			hspeed = _v/2.5;
			vspeed = (-abs(_v) - _g/2)*2.5;
			gravity = _g;
			image_angle = 90;
			vSpeed = vspeed;
		
		}
		if(myGuy.facing == LEFT){
			rot = (220 + -vSpeed*3);
		}else{
			rot = (120 + vSpeed*3);
		}
	
		alarm[0] = 80;
	}
}else{
	rot = 0;
}