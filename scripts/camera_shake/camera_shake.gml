// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camera_shake(duration,intensity){
	if(instance_exists(oCamera)){
oCamera.shake_duration = duration
oCamera.shake_intensity = intensity
	}
}