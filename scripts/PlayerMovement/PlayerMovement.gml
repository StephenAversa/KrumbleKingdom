var kLeft, kRight, kUp, kDown, kAction, kActionRelease, move;

kLeft        = keyboard_check(vk_left)  || gamepad_axis_value(0, gp_axislh) < -0.4;
kRight       = keyboard_check(vk_right) || gamepad_axis_value(0, gp_axislh) >  0.4;
kUp          = keyboard_check(vk_up)    || gamepad_axis_value(0, gp_axislv) < -0.4;
kDown        = keyboard_check(vk_down)  || gamepad_axis_value(0, gp_axislv) >  0.4;

kAction        = keyboard_check(ord("Z"))  || gamepad_button_check(0, gp_face1);
kActionRelease = keyboard_check_released(ord("Z")) || gamepad_button_check_released(0, gp_face1);

move = kRight - kLeft;
hsp = move * global.playerMaxSpeed;
vsp = vsp + global.grav;

if (hsp < 0){
	global.playerDir = LEFT;	
}else if (hsp > 0){
	global.playerDir = RIGHT;	
}

if (place_meeting(x+hsp,y,oSolid)){
	while (!place_meeting(x+sign(hsp),y,oSolid)){
		x = x + sign(hsp);	
	}
	hsp = 0;
}
x = x + hsp;

if (place_meeting(x,y+vsp,oSolid)){
	while (!place_meeting(x,y+sign(vsp),oSolid)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (kAction){
	global.actionCounter += 1;	
}

if (global.actionCounter > 10){
	global.actionHeld = true;	
}

if (kActionRelease){
	 if (!global.actionHeld){
		if (global.money > 0){
			var gem = instance_create_depth(x,y+1,-1,oGem);
			gem.vsp = -3;
			global.money --;
		}
	}
	global.actionHeld = false;
	global.actionCounter = 0;
}

 
