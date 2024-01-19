


switch(state){
case 0:
image_xscale = sign(image_xscale)*(1+sin(t)/20)
image_yscale = sign(image_yscale)*(1+cos(t)/20)
phy_speed_y = cos(t*2)*4 -0.1
if y>starty{y = starty}
t+=0.1
if(abs(x-startx) > 50){
	xsp = lengthdir_x(1,point_direction(x,y,startx,y))
}
else if t%10==0{
xsp	=random_range(-2,2)
}
if(scd <= 0){
if distance_to_object(oPlayer)<300{
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
phy_speed_y = -0.2
launchtimer--
if launchtimer<=0{
	if(launchtimer%5==0){
		var theta = pang*random_range(0.95,1.05)
		var xspd = lengthdir_x(spd,theta),yspd = lengthdir_y(spd,theta)
	var p=instance_create_depth(x +lengthdir_x(sprw/2,theta),y+lengthdir_y(sprh/2,theta),depth-1,oLazer)
	
	p.xsp = xspd
	p.ysp = yspd
	spd = random_range(3,5);
	
	
	}
	if (launchtimer<-100 || distance_to_object(oPlayer)<1){
		state =0
		scd=150
		launchtimer =lreset
		xsp = 2*-ang
		sTick=1
		phy_rotation = 0
		image_xscale =1
		image_yscale=1
		}
}
	{
	pang = point_direction(x,y,oPlayer.x,oPlayer.y)
	phy_rotation +=(lreset-launchtimer)/2
	var intensity = (lreset-launchtimer)/350
	if(round(intensity)%3==0){
		sTick+=0.05
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
if(physics_test_overlap(x+lengthdir_x(2,pang),y+lengthdir_y(2,pang),image_angle,oPlayer)&&!dead){
	state =2
	
	
}
if lifespan{
	ls--
	if(ls<=0){instance_destroy(self)}
}
