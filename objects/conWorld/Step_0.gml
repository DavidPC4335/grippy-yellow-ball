for(var i=0;i<array_length(global.shapes);i++){
	if(!global.shapeDiscovered[i]){
		with(global.shapes[i]){
			if(distance_to_object(oPlayer)<other.rng){
			oCamera.newShape(self);
			global.shapeDiscovered[i] =true;
			}
		}
	}
}


if(global.isMobile){
	var mx = mouse_x-cx,my = mouse_y-cy
	var dist = point_distance(jx,jy,mx,my);
	if(mouse_check_button_pressed(mb_left)){
		if(dist>jr){
			if(instance_exists(conPauseMenu)){
				if(!conPauseMenu.pausedGame && my>room_height/2){
			jx = mx;
			jy = my;
				}
			}
			//show_message(string(jx)+","+string(jy));
		}
	}else if(mouse_check_button_released(mb_left)){
		jx = startjx;
		jy = startjy;
		joffx=0;
		joffy=0;
	}else if(mouse_check_button(mb_left)){
	if(point_distance(jx,jy,mx,my)<=jr){
			joffx = mx-jx
			joffy = my-jy
	}else{
		joffx = lengthdir_x(jr,point_direction(jx,jy,mx,my))	
		joffy = lengthdir_y(jr,point_direction(jx,jy,mx,my))	
	}
	}
}