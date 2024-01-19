
if(!dead){
if(x>oPlayer.x &&created<=0){
t+=0.5
y+=sin(t)*3;
image_index =2;
}
else if(rot<35){
rot+=0.45;
created =1
off =0;
image_angle+=rot
}else if created<30 &&instance_exists(oBoss1){
	image_angle+=rot
	off++
	image_index =1;
	if(off%2 ==0){
	created++;
	
	var p = instance_create_layer(x,y,layer,oSquare)
	p.image_angle = point_direction(x,y,2069,544)+random_range(-5,5);
	p.spd = random_range(9,15)
	p.image_blend = oBoss1.col[round(random(2))]
	}
}else if x<6000{
x+=xsp;
y-=5;
image_angle =0
y = starty+cos(off)*30
off+=pi/20;
}else{instance_destroy(self)}



}else{
	if(delay>0){
		image_angle+=(300-delay)/4
		x = startx+random(10)
		y = starty +random(10)
		delay--;
	}else{instance_destroy(self);}

}

