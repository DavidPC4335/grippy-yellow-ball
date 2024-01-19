draw_set_color(c_yellow);
if(play){
	t2+=0.1
	p=0
	for(var j=0;j<2;j++){
		var dy = y + ((j-0.5)*170)-50
	for(var i=0;i<3;i++){
		var dx = x+((i-1)*170)
		if(point_distance(dx,dy,mouse_x,mouse_y)<65&& global.levels[j][i]){
			if(canPlay){
				audio_play_sound(soundHover,3,0)
			canPlay =false	
			}
			
		draw_sprite_ext(sPortal,t2%15,dx,dy,1.4,1.4,0,global.col[j][i],1)	
		draw_set_font(portalFont)
							draw_set_halign(fa_center)
							draw_set_valign(fa_center)
		draw_text_transformed(dx,dy,(3*j)+i+1,1.1,1.1,0)
			if mouse_check_button_pressed(mb_left) && t2>2 {
				play = false
				oTitlePlayer.play =true
				image_blend = global.col[j][i]
				sprite_index = sPortal
				depth =100
				audio_play_sound(soundClick,3,0)
				audio_play_sound(soundSuck,1,0)
				global.travelRoom = global.rooms[j][i]
			}
		}else{
			
			if(!global.levels[j][i]){

			
			draw_sprite_ext(sFPortal,t2%15,dx,dy,1.2,1.2,0,c_dkgray,1)
			draw_sprite(sLock,0,dx,dy)
			
			}else{
				p++;
				draw_sprite_ext(sFPortal,t2%15,dx,dy,1.2,1.2,0,global.col[j][i],1)
							draw_set_font(portalFont)
							draw_set_halign(fa_center)
							draw_set_valign(fa_center)
							draw_text_transformed(dx,dy,(3*j)+i+1,1,1,0)
			}

			
			
		}
	
	if(global.levels[j][i]){
	for(var k=0;k<3;k++){
			var spr = sDeadStar
			try{
		if(global.levelStars[i][j][k]){spr = sTitleStar}
		draw_sprite(spr,0,dx+(k-1)*40,dy-(sin(k*0.5*pi)*25)-30)
		}catch(_exception){
			show_message(global.levelStars[j][i][k])
		}
		}
	}
	}
	}
	var btnx = x-120,btny = y-90
	if(point_distance(btnx,btny,mouse_x,mouse_y)<(sprite_get_width(sContinueBtn)*xsc)-5){
		if(xsc == 0.3){
			audio_play_sound(soundHover,3,0)
		}
		else if(mouse_check_button_pressed(mb_left) && t2>2){
			room_goto(cutScene);	
		}
		xsc =0.4
		ysc = 0.4
	}else{
	xsc =0.3
	ysc =0.3
	}
	draw_sprite_ext(sContinueBtn,0,btnx,btny,xsc,ysc,0,c_white,1);
	canPlay = (p==c)
	}else{
		
		if(sprite_index = sPortal){
			draw_set_color(c_black)
		draw_rectangle(x-100,y-100,x+100,y+150,0)
		draw_sprite_ext(sBg,get_bg(global.travelRoom),x-160,y-100,0.15,0.2,0,c_white,1)	
		}
		draw_self()
		}
	draw_set_font(asset_font);
	draw_set_valign(fa_left);
	draw_set_halign(fa_left);
	draw_set_color(c_yellow);
	draw_text_transformed(1140,720,"By David P.C",2,2,0)