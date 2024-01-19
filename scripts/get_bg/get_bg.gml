// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_bg(rm){

var bg = 0
switch(rm){
	case Titlescreen:bg=1;break;
	case gameRoom:bg =0;break;
	case gameRoom2:bg =2;break;
	case gameRoom3:bg = 3;break;
	case gameRoom4:bg = 4;break;
	case gameRoom5:bg = 5;break;
	case gameRoom6:bg = 6;break;
}
return bg
}