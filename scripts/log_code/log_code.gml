// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function log_code(code){
conPauseMenu.togglePause();
switch(string_lower(code)){
case "debug":
debugCode();
break;
case "fly":
debugCode();
break;
case "pandy":
debugCode();
break;
case "vanessa":
room_goto(hiddenRoom);
break;
default:
	show_message("Invalid Code.");
break;
}
}

function debugCode(){
	
	if(instance_exists(oPlayer)){
	oPlayer.debug = !oPlayer.debug	
	}else if(instance_exists(oBtn)){
	oBtn.debug =true
	}
	global.levels = [[true,true,true],[true,true,true]]	
}