val =100;
minval =0
maxval = 100;
cr = 35;
clicked =false;
width =0;
circlex =0;

function draw(dx,dy,wid){
	var cx = (dx-wid/2)+(wid*(val/100)),cy = dy+3;
	draw_set_color(c_white);
draw_rectangle(dx-wid/2,dy-3,dx+wid/2,dy+3,false);
draw_set_color(c_black)
draw_rectangle(dx-wid/2,dy-3,dx+wid/2,dy+3,true);
draw_set_color(c_blue)
//draw_circle(cx,cy-3,cr,false);
draw_sprite_ext(sPlayer,val/34,cx,dy-3,cr/64,cr/64,0,c_white,1);
circlex = cx;
x =dx;
y = dy;
width =wid;
}
function update(mx,my,mouseDown){
	
	//if(keyboard_check_pressed(vk_space)) show_message(string(mx) +","+string(x));
	
	if(point_distance(circlex,y,mx,my)<cr){
	if(mouseDown == !clicked){
	clicked = mouseDown;	
	}
	
	}else if(!mouseDown){
	clicked =false;	
	}
	
	if(clicked){
	
		if(mx>=x-width/2 && mx<=x+width/2){
		circlex = mx
		 val = abs((x-width/2)-circlex)/width * 100;
		 
		}else{
			if(mx<x-width/2){
			val=0;	
			}else{
				val = 100;
			}
		//if(keyboard_check_pressed(vk_space)) show_message(abs((x-width/2)-circlex)/width * 100);	
		}
		
	}
}