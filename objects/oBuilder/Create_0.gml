isWorking = false;
worker1 = false;
worker2 = false;
myBuilding = -100;
vsp = 0;
RIGHT = 1;
LEFT = 2;
IDLE = 3;
dir = choose(RIGHT,LEFT,IDLE);
facing = dir;
hsp = 0;
alarm[0] = random_range(150, 250);
myX = -1000;

mvspd = .5;


//This should be last:
hammer = instance_create_depth(x,y,-1,oHammer);
hammer.myGuy = self;