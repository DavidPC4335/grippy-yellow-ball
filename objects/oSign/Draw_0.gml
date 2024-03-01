draw_self()
	
/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if(tutorial && stateSlider<=99){
	draw_sprite(sWASD,global.isMobile,240,272+sin(t)*5);
	t+=0.1
	oTutorial.shown =false
}


if stateSlider >0{
	var off =stateSlider*2
	draw_set_color(c_white)
//draw_rectangle(x-off-5,y-off/2+5,x+off+5,y-off-5,0)

draw_set_colour(col)
draw_sprite_stretched(sSignBg,0,x-off,y-off,off*2,off/2);
if stateSlider >99{
	draw_set_color(c_black)
	draw_set_halign(fa_center);draw_set_font(signFont)
draw_text(x,y-off+10,text)	


if(tutorial){
oTutorial.shown =true
}




if(sprite_index == sDave){
room_goto(Titlescreen)
//show_message("FUCK YOU");
url_open_ext("https://drive.google.com/file/d/10IVDx7wx4udAtL_yp3Iio6_DfgLiEiSq/view?usp=sharing","_blank")	

}
}
}





