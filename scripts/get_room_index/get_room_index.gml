// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_room_index(rm){
	switch(rm){
		case gameRoom:
		return 0
		case cutScene2:
		 return 0;
		case gameRoom2:
		return 1;
		case gameRoom3:
		return 2;
		case gameRoom4:
		return 3
		case gameRoom5:
		return 4
		case gameRoom6:
		return 5
		case hiddenRoom:
		return 1
	}
	return -1;
}