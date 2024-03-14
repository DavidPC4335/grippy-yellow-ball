// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function play_theme(rm){
	var sound =Theme1;
switch(rm){
	
	case cutScene: sound = cutsceneTheme;break;
	case cutScene2: sound = cutsceneTheme2;break;
case Titlescreen:sound = Theme0;break;
case gameRoom:sound = Theme2;break;
case gameRoom2:sound = Theme1;break;
case gameRoom3:
sound = Theme3;
	if(oPlayer.x>11825){
	sound = BossTheme
	}
break;
case gameRoom4:sound = Theme4;break;
case gameRoom5:sound = Theme5;break;
case gameRoom6:sound = BossTheme;
	if(oPlayer.x>8540){
	sound = bossTheme2
	}
break;

}
	if(!audio_is_playing(sound)){
		audio_stop_all()
	audio_play_sound(sound,4,0);
	}
}