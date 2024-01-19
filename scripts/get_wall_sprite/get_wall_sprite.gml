// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_wall_sprite(obj,spr,fromCenter){
	
	try{
	var sprh = sprite_get_height(spr),sprw = sprite_get_width(spr)
	var w = abs(obj.sprite_width)
	var h = abs(obj.sprite_height);
surf = surface_create(w,h);
surface_set_target(surf);
for(i=0;i<w;i+=sprw){
	for(j=0;j<h;j+=sprh){
		draw_sprite(spr,0,i,j);
	}
}


//drawing outline
draw_set_color(c_white);
if(isSticky(spr)){
draw_set_color(c_yellow)	
}


if(spr == sSand){
	draw_set_color(c_black);
	draw_triangle(w+1,-1,-1,h+1,-1,-1,false);
	draw_set_color(c_white);
	draw_triangle(w,-1,-1,h,w-2,h-2,true);
	draw_set_color(c_black);
	draw_point(0,h-1);
sprite = sprite_create_from_surface(surf,0,0, w,h, true, false, w/2, h/2);
}else
{//not triangle
	draw_rectangle(1,1,w-2,h-2,true);
	if(!fromCenter){
sprite = sprite_create_from_surface(surf,0,0, w,h, false, false, 0, 0);
}else{
	sprite = sprite_create_from_surface(surf,0,0, w,h, false, false, w/2, h/2);
}
}
	}catch(e){
	show_message(object_get_name(obj) +"\n"/*+string(e)*/);	
	}

surface_reset_target();
surface_free(surf);


return sprite;

}

function isSticky(sprite){
switch(sprite){
case sWood:
return true;
break;
case sWood2:
return true;
break;
default:
return false;
}
return false;
}