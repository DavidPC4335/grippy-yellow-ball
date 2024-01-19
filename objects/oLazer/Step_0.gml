effect_create_below(ef_spark,x,y,0,image_blend)
//x+=xsp
phy_speed_y =ysp
if(!init){
phy_speed_x = xsp;
phy_speed_y = ysp;
init =true;
}
if(distance_to_object(oPlayer)<5){oPlayer.hit =true;instance_destroy(self)}else{
	
}
ls--
if(ls<=0){instance_destroy(self)}