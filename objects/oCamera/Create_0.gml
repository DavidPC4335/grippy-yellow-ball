//x = 0
//y = 0
colours = [c_black,make_color_rgb(69,123,149),c_black,make_color_rgb(160,160,170),c_black,c_black]
clx = []
for(var i=0;i<6;i++){
clx[i] =room_width/2;	
}
clx[0] = 250;
gx =0
gy =0
init =false
focusx=0
bgi = get_bg(room)
focusy=0
focusObj = oPlayer
cx=0
locked =false;
cy=0
bossFight = false
offX =0;
init = false
w = (room_width/2)
h = (room_height/2)
offY =0;
camera = camera_create()
focusFrames =0
shake_intensity = 0
shake_duration = 0
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
var pm = matrix_build_projection_ortho(room_width,room_height,1,1000)
text ="test";
camera_set_view_mat(camera,vm)
camera_set_proj_mat(camera,pm)

view_camera[0] = camera
camLock = false;
x1=0;y1=0
dx=0
dy=0
px=room_width/2;py=room_height/2
bgx=0
bgy=-300
function newShape(shape){
	focusObj = shape;
	focusFrames = 100;
	text = "New Shape Discovered!"
}