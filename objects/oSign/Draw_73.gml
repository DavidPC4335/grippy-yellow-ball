/// @description Insert description here
// You can write your code in this editor
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
}
}