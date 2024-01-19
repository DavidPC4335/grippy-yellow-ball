


switch(state){
case 0:
attack =false;
image_xscale = sign(image_xscale)*(1+sin(t)/20)
image_yscale = sign(image_yscale)*(1+cos(t)/20)
phy_speed_x=xsp
if(sign(xsp)!=sign(image_xscale)){image_xscale*=-1}
t+=0.1
if(abs(phy_position_x-startx) > 50){
	xsp = lengthdir_x(1,point_direction(x,y,startx,y))
}
else if t%10==0{
xsp	=random_range(-2,2)
}
if(scd <= 0){
if distance_to_object(oPlayer)<200{
var checkWall=0
for(var i=0;i<array_length(walls);i++){
	if(!collision_line(x,y,oPlayer.x,oPlayer.y,walls[i],true,true))	{
	checkWall=1
	}
}
	state = checkWall
}
}else{scd--}
break;
case 1:
launchtimer--
if launchtimer<=0{
	
	attack = true;
	
	image_xscale=1*sign(ang)
	image_yscale=1
	if(collision_line(phy_position_x+(35*ang)+phy_speed_x,phy_position_y-60,phy_position_x+(35*ang)+phy_speed_x,phy_position_y-5,oPlayer,true,true)){
	oPlayer.hit =true
	launchtimer = -101
	}
	//physics_apply_force(x,y,10,0);
	phy_speed_x+=ang
	if (launchtimer<-100 || distance_to_object(oPlayer)<1){
		state =0
		scd=100
		launchtimer =lreset
		xsp = 2*-ang
		sTick=1
		}
}else{
	attack =false
	var intensity = (lreset-launchtimer)/175
	if(round(intensity)%3==0){
		sTick+=0.05
	var a = audio_play_sound(EnemyTick,2,0)	
	audio_sound_pitch(a,sTick)
	}
	image_xscale=random_range(1-intensity,1+intensity)*sign(ang)
	image_yscale=random_range(1-intensity,1+intensity)
	ang = sign(lengthdir_x(1,point_direction(phy_position_x,phy_position_y,oPlayer.phy_position_x,oPlayer.phy_position_y)))
}
break;case 2:
if!dead{
image_yscale = (cos(dtimer)/3)+0.5
dtimer+=0.8
with oPlayer{physics_apply_force(x,y,0,-2500)}
if dtimer>2*pi{
	dead =true
	phy_active =false
	dx=x
	dy=y
	}
}
break;
}
image_index = state
//checking if jumped on
if(collision_line(x-25,y-65,x+25,y-65,oPlayer,true,true)&&!dead){
	state =2
	
	
}
if lifespan{
	ls--
	if(ls<=0){instance_destroy(self)}
}
