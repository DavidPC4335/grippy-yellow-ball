if(place_meeting(x,y,oPlayer)){
	if!active{
		oPlayer.hp =3
		with(oFlag){
			active =false	
		}
	}
active =true
global.startx = x
global.starty = y-200
var shapes = global.shapes
	for(var i=0;i<array_length(shapes);i++){
	with(shapes[i]){
	if(x<other.x){
	instance_destroy(self)	
	}
	}
	}
}