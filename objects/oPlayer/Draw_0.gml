
if(initframes >0){
	var sc = 2.5 - (100-initframes)/50
draw_sprite_ext(sFPortal,(initframes/10)%15,global.startx,global.starty,sc,sc,0,dcol,sc/2)
initframes--
}

if(hitFrames>0){
	shader_set(shRed)
	image_index = 4
	hitFrames--
}
if(!dead){
	draw_self()
	if(efx !=0||efy !=0){
		//effect_create_below(ef_spark,x+efx,y+efy,1,c_yellow)
		var spd = (abs(phy_speed_x)+abs(phy_speed_y))/5
		var rand = random_range(0.9,1.1);
		if(abs(phy_speed_y)>3.5&&onGround){
			repeat 5{
			var s = instance_create_depth(x+efx*rand,y+efy*rand,depth-50,oSticky)
			s.spd = spd
			}
		}
		if(spd>0.1){
			var s = instance_create_depth(x+efx*rand,y+efy*rand,depth-50,oSticky)
			s.spd = spd
		}
	}
}
shader_reset()

//draw_text(x,y-100,onGround)

//draw_rectangle(x-r,y+r/4,x+r,y+r+2,true)
//draw_line(x,y,x-r-2,y)