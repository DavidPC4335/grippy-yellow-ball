var pause = (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("P"))) && (room!=TransitionRoom)

if(!init){
init =true

}else{
if(instance_number(conPauseMenu) >1) instance_destroy(self)
}

if(pause){
togglePause();
}
if(pausedGame){
audio_stop_all();
}else if (room!=TransitionRoom && ( room !=Titlescreen || global.isMobile)){
draw_self();	
}