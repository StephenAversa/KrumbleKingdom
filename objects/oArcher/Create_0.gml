vsp = 0;
RIGHT = 1;
LEFT = 2;
IDLE = 3;
//dir = choose(RIGHT,LEFT,IDLE);
dir = LEFT;
facing = dir;
defend = false;
hsp = 0;
alarm[0] = random_range(150, 250);
mySprite = choose(sprArcher, sprArcher2, sprArcher3);

mvspd = .5;
defensePoint = 0;
ds_list_add(global.rightList, self);

if (instance_number(oRubbleWall) > 0){
	UpdateFarthestBarrier();
}


//This should be last:
bow = instance_create_depth(x,y,-1,oBow);
bow.myGuy = self;