// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_enemies(){
	var enemy =0
for(var i=0;i<array_length(global.shapes);i++){
	if(instance_exists(global.shapes[i])){
	enemy ++;
	
	}
}
return enemy;
}