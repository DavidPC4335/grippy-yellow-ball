
if(drawStars){
draw_sprite_ext(sPlayer,0,room_width-transTime*(room_width/stt) +45,200,1.5,1.5,transTime*5,c_white,1)
if(transTime %3==0) effect_create_below(ef_star,room_width-transTime*(room_width/stt)-20,200,2,c_yellow)
if starOn <= 2{
	var scale = (((stt-transTime)*6)/256)-starOn
	if(global.stars[starOn]){
draw_sprite_ext(sStar,0,(300*starOn)+400,500,scale,scale,0,c_white,1)
	
	if(scale>=1){
		effect_create_above(ef_firework,(300*starOn)+400,500,3,c_yellow)
		
		var a = audio_play_sound(soundStar,1,0)
		audio_sound_pitch(a,1+starOn/4)
		starOn++;
	}
	}else{
		if (scale>=1){starOn++}else{
		draw_sprite_ext(sDeadTitleStar,0,(300*starOn)+400,500,scale,scale,0,c_white,1)
		}
	}
}
if starOn>0{

	for(var i=0;i<starOn;i++){
	if(global.stars[i]) draw_sprite(sStar,0,300*i +400,500) else draw_sprite(sDeadTitleStar,0,300*i +400,500)
	}


}

}
if(transTime<=0){
	if(!instance_exists(oCursor)){instance_create_depth(0,0,0,oCursor)}
	var d1 = (abs(mouse_x-384)<sprite_get_width(sTitle)/2 && abs(mouse_y-160)<sprite_get_height(sTitle)/2)
	var d2 =(abs(mouse_x-992)<sprite_get_width(sCont)/2 && abs(mouse_y-160)<sprite_get_height(sCont)/2)
	if(d1){
		if(!pd1) audio_play_sound(soundHover,1,0)
			pd1 =true
		
		draw_sprite(sCont,0,992,160);
		draw_sprite_ext(sTitle,0,384,160,1.2,1.2,0,c_white,1);
		if(mouse_check_button_pressed(mb_left)){
		audio_play_sound(soundClick,1,0)	
		room_goto(Titlescreen)
		}
	}else{
		pd1 =false
		draw_sprite(sTitle,0,384,160);
		if(d2){
			if(!pd2) audio_play_sound(soundHover,1,0)
			pd2 =true
			draw_sprite_ext(sCont,0,992,160,1.2,1.2,0,c_white,1);
					if(mouse_check_button_pressed(mb_left)){
					audio_play_sound(soundClick,1,0)
					room_goto(global.nextRoom)
					}
		}else{
			pd2 =false
		draw_sprite(sCont,0,992,160);	
		}
	}
	
	
/*	
	if drawStars{
		draw_set_font(portalFont)
		draw_set_color(c_black)
		draw_text_transformed(t,room_height/2,"You Win!!",3,3,0);
		draw_set_font(bigFont);
		draw_text(t,room_height/2 + 200,"Thanks for playing!")
		t+=8
		if(t>2000) t=-500
	}
*/

///room_goto(global.nextRoom);	
}

	draw_set_font(portalFont)
	draw_set_color(c_black);
	switch(starOn){
	case 3:
	case 2:
	draw_text_transformed(300*2 +400,650,"Last enemies Defeated!",0.7,0.7,0);
	case 1:
	draw_text_transformed(300*1 +400,650,"On Time!",0.7,0.7,0);
	case 0:
	draw_text_transformed(300*0 +400,650,"Stage Completed!",0.7,0.7,0);
	}