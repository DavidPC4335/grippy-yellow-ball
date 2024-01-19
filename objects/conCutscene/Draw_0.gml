draw_sprite_ext(spr,frame,0,0,1,1,0,c_white,step/stepsPerFrame);
if(frame > 0){
	draw_sprite(spr,frame-1,0,0);
}

if(point_distance(bx,by,mouse_x,mouse_y) < 50){
	if(sc == 1){audio_play_sound(soundHover,3,0)}
	sc =1.2
	if(mouse_check_button_pressed(mb_left)){
		if(frame<maxFrames){
		step=30
		frame++	
		}else{
			room_goto(Titlescreen);	
		}
	}
}else{
sc =1	
}

draw_sprite_ext(sContinueBtn,0,bx,by,sc,sc,0,c_white,1);