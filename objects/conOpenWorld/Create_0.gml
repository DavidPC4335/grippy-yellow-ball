seed = random_get_seed()
platform_layer = layer
world_elements=[]
  
max_lower = 1000
max_upper = 0
max_deviation=100
render_x = room_width
render_y = room_height

possible_heights = [64,128,300]
function place_element(obj,_x,_y){
	 v = instance_create_layer(_x,_y,platform_layer,obj)
	array_push(world_elements,v);
	return v
}

function create_platform(_x,_y,width,height,obj){
	 p = place_element(obj,_x,_y);
	p.image_xscale =width/64
	p.image_yscale = height/64
	p.spr = get_wall_sprite(obj,obj.sprite_index,0)
	var fix = physics_fixture_create()
	physics_fixture_set_box_shape(fix,width/2,height/2)
	physics_fixture_bind_ext(fix,p,width/2,height/2)
}


w=random_range(50,200)
h=possible_heights[floor(random(array_length(possible_heights)))]
while(array_length(world_elements) < 10){
	
	
	
	var _y =max(min(render_y+ random_range(-max_deviation,max_deviation),max_lower),max_upper)
	
	create_platform(render_x,_y,w,h,oWall)	
	render_x+= w*(random(2)+1)
}