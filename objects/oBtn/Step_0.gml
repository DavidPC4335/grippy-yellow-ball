w = sprite_width
h = sprite_height
image_yscale = image_xscale
y+=cos(t)/1.5
t+=0.05
if(instance_exists(oTitlePlayer)){
if(!oTitlePlayer.play){
if(abs(mouse_y-y)<h/2&&abs(mouse_x-x)<w/2 &&!play){
	if(image_xscale == 1||image_xscale == 4){audio_play_sound(soundHover,3,0)}
image_xscale = 1.2
if mouse_check_button_pressed(mb_left) && !oTitlePlayer.play{
		play =true
		audio_play_sound(soundClick,3,0)
}
}else{
	image_xscale =1

	}
}else{
	image_xscale = 4	
}

if!init{
init =true	
c=0
	for(var i=0;i<array_length(global.levels);i++){
		for(var j=0;j<array_length(global.levels[i]);j++){
			if(global.levels[i][j])c++
		}
	}
}
}