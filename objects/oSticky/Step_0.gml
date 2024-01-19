ls--
if ls<0{instance_destroy(self)}
if!init{
init =true
for(var i=0;i<array_length(sy);i++){
spdX[i] = random_range(-spd,spd)	
spdY[i] = random_range(-spd,spd)			
}
}