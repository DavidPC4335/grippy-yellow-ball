efx =0
efy=0
f++
///nv
if(f>=60){f=0;secs++}
left = keyboard_check(ord("A"))||keyboard_check(vk_left)
right = keyboard_check(ord("D"))||keyboard_check(vk_right)
jump = keyboard_check(vk_space) || keyboard_check(ord("W"))||keyboard_check(vk_up)

down = keyboard_check(ord("S")) || keyboard_check(vk_down)
if(isMobile){
if(instance_exists(conWorld)){
conWorld.getJoystickPos()	
}
}
var xmove = (right-left)



var xoff =0
onGround =false
var onSurface =false,onCeiling =false,sticky =true
for(var i=0;i<array_length(global.physObj);i++){
	if(collision_circle(x,y,r+2,global.physObj[i],true,true)){
	onSurface =true
	sticky = global.physObj[i].sticky
		if(collision_rectangle(x-r+2,y+r/4,x+r-2,y+r+1,global.physObj[i],true,true)){
		onGround =physics_test_overlap(x+5,y+5,image_angle,global.physObj[i])||physics_test_overlap(x-5,y+5,image_angle,global.physObj[i]);;
		if (i == 6){
		xoff = instance_nearest(x,y,oMoveWall).xspd	
		down =true
		}
		}else if(collision_rectangle(x-5,y-r-3,x+5,y-r+1,global.physObj[i],true,true)){
		onCeiling =true
		}
		else if(collision_point(x+r+1,y,global.physObj[i],true,true)){
			efx =r-3	
		
		}else if(collision_point(x-r-2,y,global.physObj[i],true,true)){
			efx =-r+3
		}
	}

}
if !debug{
if ((xmove == 0||sign(xmove) == sign(efx))&&efx!=0) phy_speed_x = sign(efx)
xmove+=sign(xmove)*((onGround)*4)
if abs(phy_speed_x) < 5.5{phy_speed_x+=xmove/11}
if(xmove == 0&&xoff!=0)phy_speed_x = xoff
//movement dampening
if(onGround) phy_speed_x*=0.95
if(down){physics_apply_force(x,y,0,200)}
if(onSurface){
	image_index=(abs(phy_speed_x)>1.5)*3
if jump{
	if(sticky){
	phy_speed_y = -5
	if(!audio_is_playing(soundStick)) audio_play_sound(soundStick,3,0)
	if(onGround && !audio_is_playing(soundJump)) audio_play_sound(soundJump,3,0)
	}else if onGround{
	phy_speed_y = -5	
	if(!audio_is_playing(soundJump)) audio_play_sound(soundJump,2,0)
	//if(!audio_is_playing(soundStick)) audio_play_sound(soundStick,3,1)
	}
	}
}else{
	audio_stop_sound(soundStick)
	}

}else{
	phy_speed_x = (xmove)*13
	phy_speed_y = (down-jump)*9
	if(keyboard_check_pressed(ord("E"))){
	phy_position_x+=5000	
	}
}


if(onGround){
efy =r
}else if (onCeiling){
efy =-r	
}else if phy_speed_y>0{
	image_index=2
}else{
	image_index=1
}
//animation

if(sign(phy_speed_x)!=0 && sign(image_xscale)!=sign(phy_speed_x)) image_xscale *= -1;



if(dead){
if dframes >0{
	dframes--
	phy_speed_x=0
	phy_speed_y=0
}else{
room_restart()	
}
}
if hit&&!dead&&hitFrames<=0{
repeat 10{
	instance_create_layer(x,y,"platforms",oParticle)
}
hit =false
hitFrames =15
hp--
}else{
hit =false	
}
phy_active = !dead
if(hp<=0&&!dead){
	dead =true;
	repeat 10{instance_create_layer(x,y,"platforms",oParticle)}
	audio_play_sound(soundDead,1,0)
	}
if(phy_position_y>1500 &&!dead){hp=0;hit =true}

if(place_meeting(x+phy_speed_x,y+phy_speed_y,oSpike)){
hit =true;
phy_speed_y=-lengthdir_y(5,point_direction(x,y,x+phy_speed_x,y+phy_speed_y))
phy_speed_x=-lengthdir_x(5,point_direction(x,y,x+phy_speed_x,y+phy_speed_y))
}



