if(image_alpha > 0.5){
image_alpha-=0.002;
var s = (1-image_alpha) *15
x = sx+random_range(-s,s);
y = sy +random_range(-s,s);
}else{
instance_destroy(self);	
}