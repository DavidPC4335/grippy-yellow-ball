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


if(oPlayer.isMobile){
	var mx = mouse_x-cx,my = mouse_y-cy
	var dist = point_distance(jx,jy,mx,my);
	if(mouse_check_button_pressed(mb_left)){
		if(dist>jr){
			if(instance_exists(conPauseMenu)){
				if(!conPauseMenu.pausedGame){
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
		if(abs(mx-jx) <= jr){
			joffx = mx-jx
		}else{
			joffx = sign(mx-jx)*jr
		}
		if(abs(my-jy) <= jr){
			joffy = my-jy
		}else{
			joffy = sign(my-jy)*jr
		}
	}
}