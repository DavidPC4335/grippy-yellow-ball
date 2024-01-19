switch(state){
case 0:
image_xscale = sign(image_xscale)*(1+sin(t)/20)
image_yscale = sign(image_yscale)*(1+cos(t)/20)
//phy_position_x+=xsp
t+=0.1;
if(sign(xsp)!=sign(image_xscale)){image_xscale*=-1}
if(scd <= 0){
if distance_to_object(oPlayer)<rng{
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
if launchtimer<=0&&!launched{
var h = random_range(3,12)
var l = instance_create_layer(x,y-sprite_height,layer,oETriangleShot)
l.phy_angular_velocity = h
l.phy_speed_y = -h
l.phy_speed_x = (oPlayer.x-x)/(h*13)
state =0
scd=random_range(50,120)
launchtimer =lreset
sTick=0.5

}else{
	
	var intensity = (lreset-launchtimer)/175
	if(round(intensity)%15==0){
		sTick+=0.02
	var a = audio_play_sound(EnemyTick,2,0)	
	audio_sound_pitch(a,sTick)
	}
	image_xscale=random_range(1-intensity,1+intensity)*sign(ang)
	image_yscale=random_range(1-intensity,1+intensity)
	ang = sign(lengthdir_x(1,point_direction(x,y,oPlayer.x,oPlayer.y)))
}
break;case 2:
if!dead{
image_yscale = (cos(dtimer)/3)+0.5
dtimer+=0.8
if(distance_to_object(oPlayer)<20){
with oPlayer{physics_apply_force(x,y,0,-2500)}
}
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
if (y>1500&&!dead){
	state =2
	
	
}
if lifespan{
	ls--
	if(ls<=0){instance_destroy(self)}
}
