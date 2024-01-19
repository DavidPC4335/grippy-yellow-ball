


switch(state){
case 0:

image_xscale = sign(image_xscale)*(1+sin(t)/20)
image_yscale = sign(image_yscale)*(1+cos(t)/20)
//phy_position_x+=xsp
if(abs(phy_rotation) > 5 && scd <50){phy_rotation-=sign(phy_rotation)*6;phy_speed_y = -0.3}
if(sign(xsp)!=sign(image_xscale)){image_xscale*=-1}
t+=0.1
if(abs(x-startx) > 50){
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
	image_xscale=1*sign(ang)
	image_yscale=1
	if(abs(phy_rotation)>=65){camera_shake(25,7)}

	//physics_apply_force(x,y,10,0);
	phy_speed_y+=4
	phy_rotation+=sign(ang)*5
	if (launchtimer<-100 || abs(phy_rotation)>=90){
		//show_message(phy_rotation)
		audio_play_sound(soundSmash1,2,0)
		if(place_meeting(x,y,oPlayer)){
			oPlayer.hit =true
			launchtimer = -101
		}
		state =0
		scd=100
		launchtimer =lreset
		xsp = 2*-ang
		sTick=1
		}
}else{
	if(abs(phy_rotation) > 15){phy_rotation-=sign(phy_rotation)}
	var intensity = (lreset-launchtimer)/300
	if(round(intensity)%3==0){
		sTick+=0.05
	var a = audio_play_sound(EnemyTick,2,0)	
	audio_sound_pitch(a,sTick)
	}
	image_xscale=random_range(1-intensity,1+intensity)*sign(ang)
	image_yscale=random_range(1-intensity,1+intensity)
	phy_speed_y = -0.2
	ang = sign(lengthdir_x(1,point_direction(x,y,oPlayer.x,oPlayer.y)))
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
