
if(!init){
	init = true
var p = get_level(room);
col = global.col[p[0]][p[1]]
for(var i=0;i<30;i++){
	ex[i] = random(room_width)
	ey[i] = random(room_height)
	ls[i] = random(1);
	sz[i] = random(1)*10
	spdx[i] = random_range(-2,2);
	spdy[i] = random_range(-2,2)
}	
//init clouds
for(var i=0;i< 13;i++){
cloudx[i] = i*(room_width/10)+irandom_range(-50,50);
cloudy[i] = irandom_range(-200,100);
cloudi[i] = irandom(10);
cloudSpd[i] = random_range(-3,-0.5);
cloudA[i] = random_range(0.2,0.6)
cloudsz[i] = random_range(0.8,1.1);
}
}

if(instance_exists(oPlayer)){
	
	if(!bossFight){
if(focusFrames<=0){
focusx = (oPlayer.x)+offX
focusy = (oPlayer.y-100)+offY
text = ""
if(focusx<clx[get_room_index(room)]){
	focusx=clx[get_room_index(room)]
	locked =true;
}else{
locked =false;	
}


}else if instance_exists(focusObj){
	focusFrames--
focusx = focusObj.phy_position_x
focusy = focusObj.phy_position_y	
}else focusFrames =0

}else{
focusx = 9225;
focusy = 370;
text = "";
}
var d = point_distance(x,y,focusx,focusy)
var shx=0,shy=0
if(shake_duration >0){
shake_duration--;
shx +=random_range(-shake_intensity,shake_intensity)
shy +=random_range(-shake_intensity,shake_intensity)
}else{
shx=0;
shy=0;
}
		
if(d>15){
d/=10
x+=lengthdir_x(d,point_direction(x,y,focusx,focusy))+shx
y+=lengthdir_y(d,point_direction(x,y,focusx,focusy))+shy
}else{
x+=shx
y+=shy
}



}


var projx = x+w-(room_width/2) , projy = y+h-(room_height/2)
var vm = matrix_build_lookat(projx,projy,-10,projx,projy,0,0,1,0)
camera_set_view_mat(camera,vm)


x1 = camera_get_view_x(camera);
y1 = camera_get_view_y(camera);
var x2 = x1 + camera_get_view_width(camera);
var y2 = y1 + camera_get_view_height(camera);
cx = (x2-x1)/2 + camera_get_view_width(camera)/2
cy = (y2-y1)/2
//resizing window in browser
if os_browser != browser_not_a_browser{
var a = browser_width;
var b = browser_height;


if os_browser = browser_safari_mobile or os_browser = browser_safari{
	window_set_size(browser_width, browser_height)
}
else{
	window_set_size(a, b);
}
global.scale = b/room_width
}
if(instance_exists(oPlayer)){
if(!locked){
	dx = (oPlayer.x-px)
	dy = (oPlayer.y-py)
	bgy+=(dy/15)	
	bgx+=(dx/9)
	//parallax background scroll factor
	bbgx+=(dx/17);
	
	bbgy+=dy/15
	gy+=(dy/15)
	gx+=(dx/10)

	var wi = sprite_get_width(sBg)
	if(point_distance(bgx,0,oPlayer.x,0)>wi){
	bgx += wi*sign(oPlayer.x-bgx)
	//show_message("changed")
	}
	if(point_distance(bbgx,0,oPlayer.x,0)>wi){
	bbgx += wi*sign(oPlayer.x-bbgx)
	//show_message("changed")
	}
}
	px=oPlayer.x
	py=oPlayer.y
}
if(!conPauseMenu.pausedGame){
play_theme(room);
}