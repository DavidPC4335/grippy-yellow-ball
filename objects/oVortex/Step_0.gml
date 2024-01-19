if!init{
	if (ident == 0) ident = set_indent()	
init =true;
}
if(distance_to_object(oPlayer)<=0&&entercd <=0){
	entercd = 200
	with(oVortex){
	if(ident == other.ident && entercd<=0){
	oPlayer.phy_position_x = x
	oPlayer.phy_position_y = y
	entercd = 200
	
	}
	}
}else{
entercd--	
}


