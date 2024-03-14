
// You can write your code in this editor
debug =false
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

particle_col = c_yellow
if global.levelStars[2][1][0]{
sprite_index = sFriend
particle_col = c_orange
}
