/// @description Insert description here
// You can write your code in this editor
debug =false
isMobile = (os_browser == browser_ie_mobile || os_browser == browser_safari_mobile)
if(os_type == os_gxgames){
var _info = os_get_info();

if (_info[? "mobile"])
{
isMobile =true;
}	
}
//isMobile =true;
x = global.startx
y = global.starty
phy_position_x = global.startx
phy_position_y = global.starty
init =false
initframes = 100;
r =32

global.physObj = [oBall,oRamp,oWall,oRect,oSlipWall,oFallWall,oMoveWall]

dframes = 100
dead =false
hp=3
f=0;
secs =0
hit =false
hitFrames=0
audio_stop_all()
var p = get_level(room)
dcol = global.col[p[0],p[1]]