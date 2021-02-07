vsp = vsp + global.grav;
if (place_meeting(x,y+vsp,oSolid)){
	while (!place_meeting(x,y+sign(vsp),oSolid)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;