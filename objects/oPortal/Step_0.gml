if(instance_exists(oPlayer)){
if(distance_to_object(oPlayer)<200){
	with(oPlayer){
	var dis = point_distance(x,y,other.x,other.y)
		image_xscale = (dis/300 > 1) ? 1 : dis/300;
		image_yscale = image_xscale
		phy_speed_x*=0.96
		phy_speed_y*=0.96
		if dis<10{
			global.nextRoom = other.travelRoom
			var p = get_level(room)
			image_blend = global.col[p[0]][p[1]]
			global.portalCol = image_blend;
			update_stars()
			global.pRoom  = room
			global.levels[other.unlockIndex[0]][other.unlockIndex[1]] = true
		room_goto(TransitionRoom)	
		global.startx = 410
		global.starty = 470
		}
	var f = 1400-(dis)
	var xf = lengthdir_x(f,point_direction(x,y,other.x,other.y))
	var yf = lengthdir_y(f,point_direction(x,y,other.x,other.y))
physics_apply_force(x,y,xf,yf)	
	}
}
}

if(!init){
init =true
	if(instance_exists(oPlayer)){
		var p = get_level(travelRoom)
	image_blend = global.col[p[0]][p[1]]
	if room == gameRoom6 image_blend = global.col[2][0];
	}else{

		if(x>room_width/1.5){
			image_blend = global.col[get_room_index(global.nextRoom)/3][get_room_index(global.nextRoom)%3]
			if(get_room_index(global.nextRoom) == 0) image_blend = global.col[2][0];
		}else{
			image_blend = global.portalCol;
			if(global.nextRoom == gameRoom) image_blend = c_red
		}
	}
}