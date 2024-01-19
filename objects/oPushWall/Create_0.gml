t=0
startAngle = image_angle
rlim =0
rspd =0
w = sprite_width*image_xscale
h = sprite_height

var mag = point_distance(x,y,x+w/2,y+h/2)
cx = x-lengthdir_x(mag,image_angle+90)
cy = y-lengthdir_y(mag,image_angle+90)
init =false;
force = 500
mxdis = force/4
angleBound = point_direction(cx,cy,x+lengthdir_x(mxdis,image_angle),y+lengthdir_y(mxdis,image_angle))-image_angle