// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_stars(){
global.stars =[true,false,false];
var enemy =(get_enemies()<=0);
reqsecs = 100
if(enemy){global.stars[2] =true}
if room = gameRoom6{
	reqsecs = 120
}
if(oPlayer.secs < reqsecs){global.stars[1] =true;}

}