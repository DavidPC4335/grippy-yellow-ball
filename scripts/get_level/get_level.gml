// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_level(lvl){
	var r = [0,1]
	for(var i = 0;i<array_length(global.rooms);i++){
		for(var j = 0;j<array_length(global.rooms[0]);j++){
			//show_message([global.rooms[i][j],lvl])
			if(global.rooms[i][j] == lvl){
				//show_message([i,j])
			return [i,j]	
			}
		}
	}
	return r
}