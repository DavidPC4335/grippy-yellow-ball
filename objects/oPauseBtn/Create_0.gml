
function draw(dx,dy){
	draw_sprite_ext(sprite_index,0,dx,dy,image_xscale,image_yscale,image_angle,c_white,1);
	x = dx
	y = dy
}
function update(mx,my,mousePressed){
	if(abs(mx-x) < sprite_width/2 && abs(my-y) < sprite_height/2){
		if(image_xscale == 1){
		audio_play_sound(soundHover,1,0)	
		}
		image_xscale =1.2;
		image_yscale = image_xscale;
		if(mousePressed){
		run();	
		}
	}else{
		image_xscale =1;
		image_yscale = image_xscale;
	}
}

function run(){

if(sprite_index == sQuit){
		conPauseMenu.togglePause()
	instance_destroy(conPauseMenu.c);
room_goto(Titlescreen)
}else if(sprite_index == sResume){
	conPauseMenu.togglePause()
}else if sprite_index == sDevCode{
	log_code(get_string("Enter Developer Code:","Code:"));
}
}