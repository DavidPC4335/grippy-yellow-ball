if grabbed{
if shake{
	for(var i=0;i<10;i++){
	draw_set_color(c_yellow);
	var len = lengthdir_x(1500,pang),wid = lengthdir_y(1500,pang)
draw_line(x+i,y+i,x+len+i,y+wid+i)	
}
}
draw_sprite_ext(sprite_index,0,x,y,-image_xscale,1,pang+(180*(sign(xspd) == -1)),c_white,1);
image_index =1;
}
draw_self()
var t = point_direction(x,y,oPlayer.x,oPlayer.y)
pang +=sign(t-pang)/16