

//effect_create_above(ef_spark,x,y,1,c_yellow)
/*
var p = instance_create_layer(x,y,layer,oSticky)
p.spd = phy_speed/3;
*/
var ang = point_direction(x,y,x-phy_speed_x,y-phy_speed_y)
effect_create_below(ef_spark,x+lengthdir_x(sprite_width/2,ang),y+lengthdir_y(sprite_height/2,ang),0,c_yellow)
draw_self()
