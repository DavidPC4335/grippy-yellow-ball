x = phy_position_x
y = phy_position_y
image_angle = phy_rotation
var xsp = phy_speed_x
var ysp = phy_speed_y
if(lspan<=0){instance_destroy(self)}else{lspan--;}
if(place_meeting(x+xsp,y+ysp,oPlayer)){
oPlayer.hit =true	
instance_destroy(self)
}