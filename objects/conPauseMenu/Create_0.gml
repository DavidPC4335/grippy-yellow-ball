global.isMobile = (os_browser == browser_ie_mobile || os_browser == browser_safari_mobile)
if(os_type == os_gxgames){
var _info = os_get_info();

var mob = ds_map_find_value(_info,"mobile");
//show_message(mob);
if (mob)
{
global.isMobile =true;
}	
}
drawn =false;


init =false


pausedGame =false;
c =0;
musicSlider = instance_create_depth(x,y,depth,oSlider);
resumeBtn = instance_create_depth(x,y,depth,oPauseBtn);
quitBtn = instance_create_depth(x,y,depth,oPauseBtn);
devBtn = instance_create_depth(x,y,depth,oPauseBtn);

iconw = [40,40,40,30 ,50,100]
iconh = [40,40,40,100,100,100]

with resumeBtn{
	sprite_index = sResume;
}
with quitBtn{
	sprite_index = sQuit;
}
with devBtn{
	sprite_index = sDevCode;
}

function togglePause(){
	pausedGame = !pausedGame;	
physics_pause_enable(pausedGame);
if(pausedGame){
c = instance_create_depth(0,0,10,oCursor);	
}else{
instance_destroy(c);	
}
}

function set_gain(gain){
var num = audio_get_listener_count();
for( var i = 0; i < num; i++;)
{
    var info = audio_get_listener_info(i);
    audio_set_master_gain(info[? "index"], gain);
    ds_map_destroy(info);
}	
}