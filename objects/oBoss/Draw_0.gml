

if(wakeFrames >0){
draw_wake(wakeFrames)	
draw_sprite_ext(head,shakeHead,x,y-wakeFrames*2,-hscale*sign(image_xscale),hscale,wakeFrames*10,c_white,1)

}else{
	if(wakeFrames ==0){
	starx =x
	stary =y;
	wakeFrames--;
	}
	draw_heath();
if hitFrames>0{
shader_set(shRed)	
}
if(aoff>0){
aoff-=0.5	
}
for(var i=0;i<8;i++){
var ang = image_angle+(45*i)
var dx = x+lengthdir_x(r,ang),dy = y+lengthdir_y(r,ang)+15;
	if(i == 0){
	dx-=aoff
	}else if i==4{
	dx+=aoff	
	}
draw_sprite_ext(sEBossArm,0,dx,dy-20,armScale*2,armScale*2,ang-90,c_white,1)
}
//draw_sprite_ext(sarm,shakeArm,x+lengthdir_x(60,armAng+90),y+-20+lengthdir_y(60,armAng+90),armScale,armScale,armAng,c_white,1)
//draw_sprite_ext(sBoss,0,x,y,image_xscale,image_yscale,image_angle,c_white,1)
draw_self()
draw_sprite_ext(head,shakeHead,starx,stary,-hscale*sign(image_xscale),hscale,image_angle,c_white,1)
shader_reset()
}

if (shakeHead){
for(var i=0;i<8;i++){
	draw_set_color(c_orange);
	var len = lengthdir_x(700,lang),wid = lengthdir_y(700,lang)
draw_line(x+i,y+i,x+len+i,y+wid+i)	
}
}




