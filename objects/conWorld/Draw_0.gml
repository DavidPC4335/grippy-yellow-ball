//Big message text
draw_set_font(bigFont);draw_set_color(c_white);draw_set_halign(fa_center)
draw_text(oCamera.x,oCamera.y-200,oCamera.text);
//UI
if(!oPlayer.dead) draw_sprite(sHP,oPlayer.hp,oCamera.x-room_width/2,oCamera.y-room_height/2)