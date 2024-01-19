//resizing window in browser
if os_browser != browser_not_a_browser{
var a = browser_width;
var b = browser_height;


if os_browser = browser_safari_mobile or os_browser = browser_safari{
	window_set_size(a, b)
}
else{
	window_set_size(a, b);
}
}
step++
if(frame<= maxFrames){

if(step >=stepsPerFrame){
step=15
frame++
}
}else if(step > stepsPerFrame*maxFrames){
room_goto(Titlescreen);	
}
