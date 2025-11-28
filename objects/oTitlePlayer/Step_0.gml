if(!init){
init =true
if global.levelStars[2][1][0]{
	if(instance_number(oTitlePlayer) ==1){
		var p = instance_create_depth(100,y,depth,oTitlePlayer);
		with p{
			sx = other.sx
			sprite_index = sFriend
			color = c_orange
		}
	}
}
}


if place_meeting(x,y,oVortex){
	room_goto(openWorldRoom)	
}



if phy_position_y>1400{
	d++
phy_position_y = sy
phy_position_x = sx[d%2]
x = sx[d%2]
y = sy
phy_speed_x=0




repeat 10{instance_create_layer(x,y,"Instances",oParticle)}
}

if point_distance(x,y,mouse_x,mouse_y)<32&&mouse_check_button_pressed(mb_left){
var ang = point_direction(x,y,mouse_x,mouse_y);
physics_apply_force(x,y,-lengthdir_x(10000,ang),-15000);
}else if point_distance(1250,700,mouse_x,mouse_y)<132&&mouse_check_button_pressed(mb_left){
	/*
	str =get_string("Enter your name","Name:")
	if(string_lower(str) == "vanessa"){
		room_goto(hiddenRoom)
	}	
	*/
}

if play{
	var dis = point_distance(x,y,oBtn.x,oBtn.y)
	if(dis<200){
		image_xscale = dis/200
		image_yscale = image_xscale
		phy_speed_x*=0.96
		phy_speed_y*=0.96
		if dis<10{
		room_goto(global.travelRoom)	
		}
	}
	var f = 1500-(dis)
	var xf = lengthdir_x(f,point_direction(x,y,oBtn.x,oBtn.y))
	var yf = lengthdir_y(f,point_direction(x,y,oBtn.x,oBtn.y))
physics_apply_force(x,y,xf,yf)
}
//loopign
if(phy_position_x<-sprite_width){
phy_position_x = room_width+sprite_width;	
}else if(phy_position_x>room_width+sprite_width){
	phy_position_x=-sprite_width
}