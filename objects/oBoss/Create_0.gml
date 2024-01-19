state =boss.idle;
nextState = boss.shoot;
px = [9735,8735]
py = 288
starTx =x
ci =false;
starTy =y
timerReset = 160
switchTimer = timerReset
update =false
t=0
r =90
startx= x
starx =x;
stary =y;
wakeFrames = 200
sang =0
summoned =false
aoff = 0;
shakeHead =false
pState = boss.shoot
shakeArm =false
shakeBody =false
starty = y
slammed =false
pang =0
jang = 0
lang =0
poff =0;
armAng = -90;
turns =0;
hitFrames =0
hp = 10
head = sBossHead
sarm = sEtraingle
armScale =0.4
hscale = 1
active = false
col = [c_yellow,c_green,c_purple,c_red]
for(var i=0;i<220;i++){
	rectX[i] = random_range(-600,600)
	rectY[i] = random_range(-400,100)
	rectW[i] = random_range(15,40)
	rectH[i] = random_range(15,40)
	colI[i] = irandom(array_length(col)-2)
	offX[i] = random_range(-r,r);
	offY[i] = random_range(-r,r);
}

enum boss{
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
	if(turns <=6 && s == boss.summon){
		s = round(random(9)/2)	
	}
	}
	return s;
}
function draw_wake(num){
	
	for(var i=0;i<array_length(rectX);i++){
		
		var dx = x+rectX[i]
		var dy = y+rectY[i],tx = x+offX[i],ty = y+offY[i]
		var ang = point_direction(dx,dy,tx,ty)
		dx+=lengthdir_x((point_distance(dx,dy,tx,ty)/230)*(200-num),ang)
		dy+=lengthdir_y((point_distance(dx,dy,tx,ty)/230)*(200-num),ang)
		draw_set_color(col[colI[i]])
		draw_rectangle(dx,dy,dx+rectW[i],dy+rectH[i],0)
		
		
	}
}
sTick = 0.5

function draw_heath(){
	var x1 = 8800,y1 = 10
	draw_set_color(c_red)
	draw_roundrect(x1,y1,x1+hp*100,y1+50,0);
	draw_set_color(c_black);
	draw_roundrect(x1,y1,x1+1000,y1+50,1);
}
