state =boss.idle;
nextState = boss.slam;
switchTimer = 100
timerReset = 100
update =false
t=0
wakeFrames = 200
sang =0
summoned =false
shakeHead =false
pState = boss.shoot
shakeArm =false
shakeBody =false
starty = y
slamWait =0;
hitGround =false;
slammed =false
pang =0
jang = 0
poff =0;
armAng = -90;
hitFrames =0
hp = 4
head = sEnemy
sarm = sEtraingle
armScale =0.4
hscale = 1
active = false
col = [c_yellow,c_green,c_purple,c_red]
for(var i=0;i<40;i++){
	rectX[i] = random_range(-200,200)
	rectY[i] = random_range(100,200)
	rectW[i] = random_range(10,60)
	rectH[i] = random_range(10,60)
	colI[i] = irandom(array_length(col)-2)
}
	rectX[40] = random_range(-200,200)
	rectY[40] = random_range(100,200)
	rectW[40] = -1
	rectH[40] = 64
	colI[40] = 3

enum fboss{
jump,
shoot,
slam,
idle,
hit,
summon
}
function getState(){
	var s = pState
	while (s==pState ||s == state ||s==boss.hit){
	s = round(random(10)/2)	
	}
	//return boss.slam;
	return s
}
function draw_wake(num){
	for(var i=0;i<array_length(rectX);i++){
		var dx = x+rectX[i]
		var dy = y+rectY[i]	
		var off = (10-i)*5
		var ang = point_direction(dx,dy,x,y+off)
		dx+=lengthdir_x((point_distance(dx,dy,x,y+off)/230)*(200-num),ang)
		dy+=lengthdir_y((point_distance(dx,dy,x,y+off)/230)*(200-num),ang)
		
		draw_set_color(col[colI[i]])
		if(rectW[i] == -1){
			draw_sprite_ext(sEnemy,0,dx,dy,-1,1,0,image_blend,1);
		}else{
		draw_rectangle(dx,dy,dx+rectW[i],dy+rectH[i],0)
		}
		
		
	}
}
sTick = 0.5
