if(instance_exists(oPlayer)){
	var dis = point_distance(cx,cy,oPlayer.x,oPlayer.y)
if (abs(point_direction(cx,cy,oPlayer.x,oPlayer.y)-image_angle)<angleBound){
	if dis<mxdis*2{
		appforce = force*4
		with(oPlayer){
			
		physics_apply_force(x,y,lengthdir_x(other.appforce,other.image_angle),lengthdir_y(other.appforce,other.image_angle))	
		}
		
		}
}
}

if(abs(image_angle-startAngle)>rlim){
image_angle-=rspd*2
rspd*=-1	

}



if(!init){
init =false;
mxdis = force/4.7
angleBound = point_direction(cx,cy,x+lengthdir_x(mxdis,image_angle),y+lengthdir_y(mxdis,image_angle))-image_angle

}