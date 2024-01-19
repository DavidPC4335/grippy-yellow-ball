if(sign(x-oPlayer.x)!= sign(image_xscale)){image_xscale*=-1}

switch(state){
case boss.idle:
if(active){
	if(turns>3){
starx+=lengthdir_x(abs(starTx-starx)/30 +1,point_direction(starx,stary,starTx,starTy));
stary+=lengthdir_y(abs(starTy-stary)/30 +1,point_direction(starx,stary,starTx,starTy));
	}
	
	
if(switchTimer == timerReset){
	nextState = getState()
	timerReset = random_range(140,190);
}
image_xscale = sign(image_xscale)*(1+sin(t)/20)
image_yscale = sign(image_yscale)*(1+cos(t)/20)
t+=0.1
if(y>starty){phy_speed_y = -2;}
var reqdis = 9000
if(nextState == boss.shoot||nextState == boss.summon){reqdis = 8000}
if (nextState == boss.jump){reqdis = 5900000}
if(distance_to_object(oPlayer)<reqdis){

if(switchTimer<120){
	if(turns >3){
	starTx = px[ci];
	starTy =py;
	}
	if(nextState = boss.slam){
		shakeHead = true
	}else if nextState == boss.shoot{
	shakeArm = true	
	phy_rotation+=(random_range(50,60)-switchTimer);
	}else if nextState == boss.jump || nextState == boss.summon{
	shakeBody =true	
	jang =pang
	}
}else{
if(abs(phy_rotation/360) > 5){phy_rotation-=sign(phy_rotation)*5;phy_speed_y = -0.3}else{phy_rotation =0}	

	starTx =x;
	starTy =y;

}
if(switchTimer >0){
switchTimer--	
}else{
state = nextState;
switchTimer = timerReset
slammed =false
summoned =false
turns++;
var impulsex = 2,impulsey = -2;
ci = !ci;
if(x>startx){
impulsex*=-1;	
}
phy_speed_x += impulsex;
phy_speed_y += impulsey;
//audio_play_sound(soundStar,1,0)
}
}else{
	shakeHead =false
phy_speed_x = sign(poff)*4
if(y>=starty){
phy_speed_y = (y-starty)/4
}
phy_rotation=0
}
}else{
if(distance_to_object(oPlayer)<300 || wakeFrames<190){
	if(wakeFrames >0){
	wakeFrames--
	camera_shake(1,3);
	}else{
	active = true
	}
}
}
break;case boss.hit: 
shakeBody = false
shakeHead =false
shakeBody =false
shakeArm =false
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
}

break;case boss.slam:
shakeHead = false
var ldx = lengthdir_x(1,lang),ldy = lengthdir_y(1,lang)
for(var i=0;i<70;i++){
var dx = x+(ldx*(i*10)),dy = y+ldy*(i*10)
effect_create_below(ef_spark,dx,dy,2,c_red);
}
if(collision_line(x,y,x+(ldx*700),y+(ldy*700),oPlayer,false,true)){
	if(collision_line(x,y,x+(ldx*700),y+(ldy*700),oSpring,false,true)){
	if(distance_to_object(oPlayer) > distance_to_object(oSpring)){
		oPlayer.hit =true;	
	}
	}else{
		oPlayer.hit =true;	
	}
}

			nextState = boss.idle
		state = nextState
		pState = boss.slam
		
		
break; case boss.shoot:
shakeArm =false
image_angle = pang;
for(var i=0;i<8;i++){
	var ang = image_angle+(45*i)
var p = instance_create_layer(x+lengthdir_x(60,ang+90),y+-20+lengthdir_y(60,ang+90),"platforms",oRocket)
	p.spdx = lengthdir_x(13,ang+90)
	p.spdy = lengthdir_y(13,ang+90)
	p.image_angle = ang+90
}
	nextState = boss.idle
		state = nextState
		pState = boss.shoot
		
		
		
		
		
break; case boss.jump:
if(phy_position_y >starty && !slammed){
phy_speed_y = (((starty-200)-phy_position_y)/15) -1	

jang =pang
}else{
	slammed = true
	
	if(phy_position_y>680-r || place_meeting(x,y,oPlayer) ||place_meeting(x,y,oSlipWall)){
		if(place_meeting(x,y,oPlayer)){
			oPlayer.hit = true
			state = boss.hit
		hitFrames = 15;
			}else if(place_meeting(x,y,oSlipWall)){
		hp--
		
		state = boss.hit
		hitFrames = 15;
		}else{
			nextState = boss.idle
		state = nextState	
		}
		audio_play_sound(soundSmash2,2,0)
		phy_speed_y =0
		phy_speed_x =0
		camera_shake(25,15);
		
		pState = boss.jump
		slammed =false
		shakeBody =false;
	}else{
		phy_rotation +=15
	phy_speed_x = lengthdir_x(10,jang)
	phy_speed_y = lengthdir_y(10,jang)
	if(place_meeting(x,y,oSpring)){
		jang+=180
		phy_position_x +=lengthdir_x(10,jang)*2
		phy_position_y +=lengthdir_y(10,jang)*2
		}
	}
}
break; case boss.summon:
shakeBody = false
if !summoned && !instance_exists(oBossMinion){
	aoff = 70
	var s = instance_create_layer(x+r,y,layer,oBossMinion)
	s.xspd = 8;
	s.yspd = random(3);
	var s2 = instance_create_layer(x-r,y,layer,oBossMinion)
	s2.xspd = -8
	s2.yspd = random(3);
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

}

pang = point_direction(x,y,oPlayer.x,oPlayer.y)
if(shakeHead){
lang+=(sign(pang-lang))/2.5
}else lang = pang
poff = lengthdir_x(1,pang);
armAng = pang-90
image_index = 4-hp
if(hp<=0){
instance_destroy(self)	
}

image_index =0

if(point_distance(starx,stary,oPlayer.phy_position_x,oPlayer.phy_position_y) <70 && hitFrames<=0){
oPlayer.phy_speed_x*=-1.1
oPlayer.phy_speed_y = -3;
state = boss.hit
hitFrames =30;
hp-= 2;
}

if(turns<=3){
	
starx+=lengthdir_x(abs(starTx-starx)/30 +1,point_direction(starx,stary,starTx,starTy));
stary+=lengthdir_y(abs(starTy-stary)/30 +1,point_direction(starx,stary,starTx,starTy));	
starTx =x;
starTy =y;
}
