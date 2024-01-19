if(!grabbed){
x+=xspd
y+=yspd
if(place_meeting(x,y,oSlipWall)||place_meeting(x,y,oWall)){grabbed = true}
pang =point_direction(x,y,oPlayer.x,oPlayer.y);
}else{

if(delay>0){
delay--
if(delay<90){
	shake = true;
}
}else{
delay = random_range(120,190);
shots--

var ldx = lengthdir_x(1,pang),ldy = lengthdir_y(1,pang)
for(var i=0;i<140;i++){
var dx = x+(ldx*(i*10)),dy = y+ldy*(i*10)
effect_create_below(ef_spark,dx,dy,2,c_red);
}
if(collision_line(x,y,x+lengthdir_x(1400,pang),y+lengthdir_y(1400,pang),oPlayer,true,true)){
oPlayer.hit =true;	
}else if(collision_line(x,y,x+lengthdir_x(1400,pang),y+lengthdir_y(1400,pang),oBoss,true,true)){
oBoss.hitFrames =15
oBoss.state = boss.hit
oBoss.hp--;
}


	if(shots <=0){instance_destroy(self)}


	}
}
image_xscale = sign(x-oPlayer.x)