x = mouse_x
y = mouse_y
if(mouse_check_button_pressed(mb_left)){
image_index =0;
image_speed = 2;
}
if(round(image_index) == 3){
	repeat(5){
var p = instance_create_depth(x,y,depth,oSticky)	
p.sz =3;
p.spd = 4
	}
}