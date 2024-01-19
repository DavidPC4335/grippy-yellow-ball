
if(room = gameRoom3){
var v = instance_create_layer(14935,350,"platforms",oVortex)
v.ident =2
}else{
	var v = instance_create_layer(2069,544,"platforms",oVortex)
v.ident =2
v.image_blend = c_red;
}
repeat 15{
	var pcol = c_red
	if(random(10)>5) pcol = c_maroon
var p = instance_create_layer(x,y+100,layer,oParticle)
	p.col = pcol
	p.image_blend = pcol
}
