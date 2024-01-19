if(abs(spdx+spdy) > 0){
	image_angle = point_direction(x,y,x+spdx,y+spdy);
	
	effect_create_below(ef_smoke,x-spdx,y-spdy,0,c_yellow)
for(var i=0;i<array_length(col);i++){
if(place_meeting(x,y,col[i]) && !stuck){
	if(i==2){
	spdx*=-random_range(0.8,1.1)
	spdy*=-random_range(0.8,1.1)
	}else if(i==3){
		if(ls<170){
		spdx=0;spdy =0;		
		//stuck = true
		}
	}else{
		stuck = true;
spdx=0;spdy =0;	
	}
}
}



}else if(place_meeting(x,y,oPlayer) && !stuck){

x+=oPlayer.phy_speed_x
y+=oPlayer.phy_speed_y
	
}else if (ls<170&&place_meeting(x,y,oBoss)){
	
x+=oBoss.phy_speed_x
y+=oBoss.phy_speed_y
}
ls--
if(ls<0){instance_destroy(self)}
image_speed = (sls-ls)/20
x+=spdx;y+=spdy;
if(place_meeting(x,y,oRoller)){
instance_destroy(self)	
}
