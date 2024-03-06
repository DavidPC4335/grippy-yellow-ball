
//Big message text
draw_set_font(bigFont);draw_set_color(c_white);draw_set_halign(fa_center)
draw_text(oCamera.x,oCamera.y-200,oCamera.text);
//UI
if(!oPlayer.dead) draw_sprite(sHP,oPlayer.hp,cx,cy)
if(instance_exists(conPauseMenu) && instance_exists(oCamera)){
cx = oCamera.x-room_width/2
cy = oCamera.y-room_height/2
if(conPauseMenu.drawn){
	var dx = oCamera.x+room_width/2 - 70;
var dy = oCamera.y-room_height/2+50
draw_sprite(sPauseBtn,0,dx,dy)	
draw_sprite(sPauseBtn,1,dx-100,dy);
if(point_distance(mouse_x,mouse_y,dx-100,dy)<50 && mouse_check_button_pressed(mb_left)){
room_restart();	
}
}


if(global.isMobile){
	//drawing pauseBtn

	draw_set_color(c_white);
	width = 5;
	for(var i=0;i<width; i++){
	draw_circle(cx+jx,cy+jy,jr+i,true)	
	}
	draw_set_alpha(0.7);
	draw_circle(cx+jx+joffx,cy+jy+joffy,jr-width,false)
	//draw_text(cx+jx+joffx,cy+jy+joffy,string(joffx)+","+string(jr))
	draw_set_alpha(1);
}
}

