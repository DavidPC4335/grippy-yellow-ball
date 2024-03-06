if(sign(x-oPlayer.x)!= sign(image_xscale)){image_xscale*=-1}

switch(state){
case boss.idle:
if(active){
if(switchTimer == timerReset){
	nextState = getState()
}
image_xscale = sign(image_xscale)*(1+sin(t)/20)
image_yscale = sign(image_yscale)*(1+cos(t)/20)
t+=0.1
if(abs(phy_rotation) > 5){phy_rotation-=sign(phy_rotation)*5;phy_speed_y = -0.3}else{phy_rotation =0}
var reqdis = 175
if(nextState == boss.shoot||nextState == boss.summon){reqdis = 800}
if (nextState == boss.jump){reqdis = 500}
if(distance_to_object(oPlayer)<reqdis){
if(switchTimer<50){
	if(nextState = boss.slam){
		phy_speed_y = -1
		shakeHead = true
	}else if nextState == boss.shoot{
	shakeArm = true	
	}else if nextState == boss.jump || nextState == boss.summon{
	shakeBody =true	
	}
}
if(switchTimer >0){
switchTimer-=1;
}else{
state = nextState;
switchTimer = timerReset
slammed =false
summoned =false
//audio_play_sound(soundStar,1,0)
}
}else{
	shakeHead =false
phy_speed_x = sign(poff)*4
if(y>=starty){
phy_speed_y = -0.1
}
phy_rotation=0
}
}else{
if(distance_to_object(oPlayer)<500){
	if(wakeFrames >0){
	wakeFrames--
	}else{
	active = true
	}
}
}
break;case boss.hit: 
shakeBody = false
shakeArm =false
shakeHead =false;
if hitFrames <=0{

		nextState = boss.idle
		state = nextState
		pState = boss.jump
}else{
	if(hitFrames%3==0){
var p = instance_create_layer(x,y+100,layer,oParticle)
	p.col = c_maroon
	p.image_blend = c_maroon
	}		
hitFrames--	
	if(place_meeting(x,y,oSpike)){
		dx =0
		dy =0
		var s = instance_nearest(x,y,oSpike)
		sang = point_direction(x,y,s.x,s.y)

	}else if place_meeting(x,y,oETriangleShot){
		var s = instance_nearest(x,y,oETriangleShot)
		sang = point_direction(x,y,s.x,s.y)
		instance_destroy(s)
	}
		phy_speed_x = -lengthdir_x(3,sang)
		phy_speed_y = -lengthdir_y(3,sang)
}

break;case boss.slam:
shakeHead = false
	image_xscale=1*sign(pang)
	image_yscale=1
	phy_speed_x=0
	//physics_apply_force(x,y,10,0);
	phy_speed_y+=3
	phy_rotation+=sign(poff)*5

	if((abs(phy_rotation)>=90 || switchTimer < 10) && !hitGround){
		if(place_meeting(x,y,oPlayer)){
			oPlayer.hit = true
			slamWait = 0;
		}else{
			slamWait = 200;
		}
		audio_play_sound(soundSmash1,2,0)
		
		hitGround = true
	}
	if(hitGround){
	if(slamWait <1){
		hitGround = false;
		nextState = boss.idle
		state = nextState
		pState = boss.slam
	}else{
	slamWait--;	
	if(physics_test_overlap(x,y,phy_rotation,oPlayer)){
		slamWait =0;
		state = boss.hit;
		hitFrames = 30;
				oPlayer.phy_speed_x *=-1.1
		oPlayer.phy_speed_y =-4;
		hp--;
	}
	}
	}else{
			if(abs(phy_rotation) > 80){camera_shake(25,7)}
	}
break; case boss.shoot:
shakeArm =false
var p = instance_create_layer(x+lengthdir_x(60,armAng+90),y+-20+lengthdir_y(60,armAng+90),"platforms",oETriangleShot)
	p.phy_speed_x = lengthdir_x(13,armAng+90)
	p.phy_speed_y = lengthdir_y(13,armAng+90)
	p.image_xscale = 1.5
	p.image_yscale = 1.5
	nextState = boss.idle
		state = nextState
		pState = boss.shoot
break; case boss.jump:
if(shakeBody){audio_play_sound(soundSmash1,2,0)}
shakeBody = false
if(phy_position_y > starty-210 && !slammed){
phy_speed_y = (((starty-200)-phy_position_y)/15) -1	

jang =pang
}else{
	slammed = true
	
	if(phy_position_y>=starty || place_meeting(x,y,oPlayer)){
		if(place_meeting(x,y,oPlayer)) oPlayer.hit = true
		audio_play_sound(soundSmash2,2,0)
		phy_speed_y =0
		phy_speed_x =0
		camera_shake(25,15);
			nextState = boss.idle
		state = nextState
		pState = boss.jump
	}else{
		phy_rotation = 0
	phy_speed_x = lengthdir_x(20,jang)
	phy_speed_y = lengthdir_y(18,jang)
	}
}
break; case boss.summon:
shakeBody = false
if !summoned{
	var i=irandom(3)
	var sobj = global.shapes[i]
	var s = instance_create_layer(x+poff*100,y-100,layer,sobj)
	if(i==0){
	s.state =1	
	s.phy_position_y +=70
	}
	
	s.lifespan =true;
	s.phy_speed_y = -3
	s.phy_speed_x = poff*10
	summoned =true
}else{
		nextState = boss.idle
		state = nextState
		pState = boss.summon
}
break;
}

var tick = (shakeHead||shakeBody||shakeArm)
if(shakeHead){
	hscale = 1+random_range(-0.2,0.2);
}else{
hscale = 1	
}

if(shakeArm){
	armScale = 0.4+random_range(-0.1,0.1);
}else{
armScale = 0.4	
}
if shakeBody{
image_xscale = sign(image_xscale)+random_range(-0.2,0.2);
image_yscale = abs(image_xscale)
}else if state !=boss.idle{
	image_xscale =1
	image_yscale = image_xscale
}
if(tick){
var intensity = (50-switchTimer)/300
	if(round(intensity)%4==0){
		sTick+=0.05
	var a = audio_play_sound(EnemyTick,2,0)	
	audio_sound_pitch(a,sTick)
	}	
}else{
sTick = 0.5	
}

if(place_meeting(x,y,oSpike)){
	if(hitFrames<=0){
		state = boss.hit
		hitFrames =30
		hp--
		}

}else{
	flag =false;
with(oEnemy){
	if(attack){
	if(physics_test_overlap(phy_position_x+phy_speed_x,phy_position_y+phy_speed_y,phy_rotation,other)){
	other.flag = true;
	attack =false;
	state = 0;
    launchtimer =lreset
	}
	}
}
if(image_angle/10==0 && hitFrames<=0){
 if(collision_line(phy_position_x-5,phy_position_y-sprite_height/1.5,phy_position_x+5,phy_position_y-sprite_height/1.5,oPlayer,false,true)){
		state = boss.hit
		hitFrames =30
		hp--
		oPlayer.phy_speed_x *=-1.1
		oPlayer.phy_speed_y =-2;
 }
}
if(flag){
	hitFrames =30;
	state = boss.hit;
hp--;	
}
}

pang = point_direction(x,y,oPlayer.x,oPlayer.y)
poff = lengthdir_x(1,pang);
armAng = pang-90
image_index = 4-hp
if(hp<=0){
instance_destroy(self)	
}

