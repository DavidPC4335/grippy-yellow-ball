if(room!= Titlescreen){
shapeDiscovered = global.shapeDiscovered
}
cx=0
cy=0;
rng =300

startjx = 1200;
startjy = 640;
jx = startjx;
jy = startjy;
jr = 90;
joffx =0
joffy =0;
function getJoystickPos(){
	if(joffx > jr/2){
		oPlayer.right = true;	
	}else if(joffx< -jr/2){
		oPlayer.left =true;
	}
		if(joffy > jr/2){
		oPlayer.down = true;	
	}else if(joffy< -jr/2){
		oPlayer.jump =true;
	}
	
}