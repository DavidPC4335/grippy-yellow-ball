if(pausedGame){
	var sprw = sprite_get_width(sPauseBG);
	var mouseDown = mouse_check_button(mb_left);
var clicked = mouse_check_button_pressed(mb_left);
draw_set_alpha(0.5);
draw_set_color(c_yellow);
var w = room_width,h = room_height;
var cx = w/2,cy = h/2;

if(instance_exists(oCamera)){
	cx = oCamera.x
	cy = oCamera.y
}
var smx = mouse_x
var smy =mouse_y

var my = cy



draw_rectangle(cx-w/1.5,cy-h/2,cx+w/2,cy+w/2,0);
draw_set_alpha(1);
draw_sprite(sPauseBG,0,cx,cy-h/2)

//buttonms

resumeBtn.draw(cx,cy-70);
resumeBtn.update(smx,smy,clicked);
quitBtn.draw(cx,cy+70);
quitBtn.update(smx,smy,clicked);
devBtn.draw(cx,cy+h/2-20);
devBtn.update(smx,smy,clicked);


//music slider
draw_sprite(sSoundIcon,(musicSlider.val/34 +1)*(musicSlider.val > 1),cx-sprw/3.5 - 15,my)
musicSlider.draw(cx+30,my,sprw/1.8);
musicSlider.update(smx,smy,mouseDown);
set_gain(musicSlider.val/100);//set the volume



//draw found Shapes
draw_set_color(c_white)
draw_set_font(signFont)
draw_set_halign(fa_center);
draw_text(cx,cy+120,"Shaped Discovered:");
var dx,dy;
for(var i=0;i<array_length(global.shapeDiscovered);i++){
	col = (global.shapeDiscovered[i]) ? c_white : c_black;
	dx = (cx-30)+((i%3)-1)*100;
	dy = (cy+170)+int64(i/3)*60
	if(i == 4){
		dx-=10
	}else if(i==5){
		dx-=20;
	}
	
	draw_sprite_stretched_ext(object_get_sprite(global.shapes[i]),0,dx,dy,iconw[i],iconh[i],col,1);	
	
	if(i == 4){
		draw_sprite_stretched_ext(sEnemy,0,dx+12,dy,20,20,col,1);	
	}else if(i==5){
		draw_sprite_stretched_ext(sBossHead,0,dx+30,dy+30,40,40,col,1);
	}
}

drawn =false
}else if (room!=TransitionRoom && ( room !=Titlescreen || global.isMobile)){
drawn =true;
x = oCamera.x+room_width/2 - 70;
y = oCamera.y-room_height/2+50
}