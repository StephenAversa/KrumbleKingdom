/// @desc draw_row(x, y, count, max_count);
/// @arg x this is the x coord of the row (from the left most side, not inducing the offset)
/// @arg y this is the y coord of the row
/// @arg count this is how big the row should be (how many squares to draw)
/// @arg max_count this is the biggest any row can be (the bottom row, perhaps?)
/// @arg sprite this is the sprite to draw. Just in case you want to change it.
/// @arg paid amount paid
var sx = argument[0];
var sy = argument[1];
var count = argument[2];
var max_count = argument[3];
var sprite = argument[4];
var paid = argument[5];

var size = 14; // size of the sprite
var padding = 2; // size of the space between each sprite

var max_width = (size+padding) * max_count; 
var my_width = (size+padding) * count; 
var offset = (max_width - my_width) / 2;
for(var i=0; i<count; i++) {
     var dx = sx + i * (size+padding) + offset;
	 if (paid > 0){
		 draw_sprite_ext(sprGem,global.moneyColors[paid],dx,sy,1,1,0,c_white,1);
		 paid--;
	 }
     draw_sprite_ext(sprCostIcon,0,dx,sy,1,1,0,c_white,.5);
}
return paid;