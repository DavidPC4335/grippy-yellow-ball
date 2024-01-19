if(instance_exists(oPlayer)){
	var cbgy = (bgy+280)
draw_set_color(make_color_rgb(100-cbgy,50-(cbgy/2),0))
var width = room_width/2
var height = room_height
//draw_rectangle(x-width/2,height+bgy+200,x+width/2,height+y,false)
draw_sprite_tiled(sGround,bgi,gx,gy)
draw_set_color(colours[get_room_index(room)]);
if(room!=gameRoom4){
draw_rectangle(x-width,y-height,x+width,bgy+sprite_get_height(sBg)-200,0);
}else{
	draw_rectangle(x-width,y-height,x+width,y+width,0);
}

//text = string(dx) + ","+string(bgx-sprite_get_width(sBg),bgy)
//if(keyboard_check_pressed(vk_space)) show_message(bgx);
draw_sprite(sBg,bgi,bgx,bgy)
draw_sprite(sBg,bgi,bgx+sprite_get_width(sBg),bgy)
draw_sprite(sBg,bgi,bgx-sprite_get_width(sBg),bgy)


//draw_text(x,y-50,cbgy)






}else{
draw_sprite(sBg,bgi,0,0)	
}
draw_set_colour(col)
for(var i=0;i<array_length(ex);i++){

draw_set_alpha(-abs(0.5-ls[i])+0.5)
draw_circle(ex[i],ey[i],sz[i],0)	
ls[i]-=0.005
ex[i] +=spdx[i]
ey[i]+=spdy[i]
if(ls[i]<0){
ls[i] =1
ex[i] = random_range(x-room_width/2,x+room_width/2)
ey[i] = random_range(y-room_width/2,y+room_height/2)
spdx[i] = random_range(-2,2);
spdy[i] = random_range(-2,2)
sz[i] = random(10)
}


}
draw_set_alpha(1);

