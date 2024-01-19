if !init{
init =true
	with oSpike{
		if place_meeting(x,y,other){
		other.spikes[array_length(other.spikes)] = self
		}
	}
}




if(ty != 0){
	if(abs((phy_position_y+yspd)-starty)>ty){yspd*=-1}
	phy_position_y+=yspd
}else{yspd =0}

if	tx !=0{
	if(abs((phy_position_x+xspd)-startx)>tx){xspd*=-1}
	phy_position_x+=xspd
}else{xspd =0}
for(var i=0;i<array_length(spikes);i++){
spikes[i].phy_position_x +=xspd	
spikes[i].phy_position_y +=yspd	
}