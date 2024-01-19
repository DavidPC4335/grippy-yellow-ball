aspeed =5
if place_meeting(x,y,oPlayer){
	if stateSlider<100 stateSlider+=aspeed
}else if stateSlider>0{
	stateSlider-=aspeed
}
if stateSlider >0{
image_yscale = 1+ (sin(stateSlider/25))/6
image_xscale = 1+ (cos(stateSlider/25))/6
}else{image_yscale=1;image_xscale =1}

