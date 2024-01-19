effect_create_below(ef_explosion,x,y,399,c_red)
if(distance_to_object(oPlayer)<30){
oPlayer.hit = true	
}else if distance_to_object(oBoss)<25{
oBoss.state = boss.hit	
oBoss.hitFrames = 15
oBoss.hp--;
}