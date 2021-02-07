global.leftWall = instance_nearest(-room_width,y,oRubbleWall);
global.rightWall = instance_nearest(room_width,y,oRubbleWall);

var listSize = ds_list_size(global.rightList);
for(i = 0; i < listSize; i++) {
	var archer = global.rightList[|i];
	archer.defensePoint = global.rightWall.x - 64 + irandom_range(0,46);
}
listSize = ds_list_size(global.leftList);
for(i = 0; i < listSize; i++) {
	var archer = global.leftList[|i];
	archer.defensePoint = global.leftWall.x - 48 + irandom_range(0,32);
}
