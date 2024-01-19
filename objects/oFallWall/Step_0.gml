if(collision_rectangle(x-dis,y-dis,dis+x+64*image_xscale,dis+y+64*image_yscale,oPlayer,true,true)){falling=true}
if(phy_position_y>1800){instance_destroy(self)}
if (!falling){
phy_position_y = phy_position_yprevious
phy_position_x = phy_position_xprevious
phy_speed_x=0
phy_speed_y=0
phy_rotation=0
}else if ls<=0{
instance_destroy(self)	
}else{
ls--;	
}
