randomize();
global.money = 100;
StoreMoneyColors();

global.grav = .25;
global.playerMaxSpeed = 2;
global.playerAccel = .25;
global.actionHeld = false;
global.actionCounter = 0;
global.buildSpeed = 1;
global.home = oFirePit;

//Hammer Stand
global.hammerStand[0] = false;
global.hammerStand[1] = false;
global.hammerStand[2] = false;
global.hammerStand[3] = false;
global.hammerFull = false;

//Bow Stand
global.bowStand[0] = false;
global.bowStand[1] = false;
global.bowStand[2] = false;
global.bowStand[3] = false;
global.bowFull = false;

//Walls
global.leftWall = 0;
global.rightWall = 0;
//Attack Lists
global.rightList = ds_list_create();
global.leftList = ds_list_create();
global.debug = true;