cx = oCamera.x-room_width/2
cy = oCamera.y-room_height/2
//Big message text
draw_set_font(bigFont);draw_set_color(c_white);draw_set_halign(fa_center)
draw_text(oCamera.x,oCamera.y-200,oCamera.text);
//UI
if(!oPlayer.dead) draw_sprite(sHP,oPlayer.hp,cx,cy)

if(oPlayer.isMobile){
	
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