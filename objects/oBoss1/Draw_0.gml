

if(wakeFrames >0){
draw_wake(wakeFrames)	
}else{
if hitFrames>0{
shader_set(shRed)	
}
draw_self()
draw_sprite_ext(sEBossArm,0,x,y-20,image_xscale,image_yscale,armAng,c_white,1)
draw_sprite_ext(sarm,shakeArm,x+lengthdir_x(60,armAng+90),y+-20+lengthdir_y(60,armAng+90),armScale,armScale,armAng,c_white,1)
draw_sprite_ext(head,shakeHead,x+lengthdir_x(sprite_height/2.5,-phy_rotation+90),y+lengthdir_y(-sprite_height/2.5,phy_rotation-90),-hscale*sign(image_xscale),hscale,image_angle,c_white,1)
shader_reset()
}


