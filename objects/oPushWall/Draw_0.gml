
t+=0.5;
if(t%1==0){
	var xoff = random(w);
	var yoff = random(h);
	var mag = point_distance(x,y,x+xoff,y+yoff)
	var dx = x-lengthdir_x(mag,image_angle+90)
	var dy = y-lengthdir_y(mag,image_angle+90)
var a= instance_create_depth(dx,dy,depth+1,oArrow)
a.image_angle = image_angle
a.spd = force/50
}
draw_self()

draw_circle(cx,cy,10,0)


