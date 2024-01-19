sy = [0,0,0,0]
sx = [0,0,0,0]
ls =random_range(20,30);
col = c_yellow
if(ls>25){
	col = make_color_rgb(246,190,0)
}
sz=2
len = 5
efx =0
efy =0
spdX =[]
spdY = []
init =false
spd = 0.1
for(var i=0;i<array_length(sy);i++){
spdX[i] = random_range(-spd,spd)	
spdY[i] = random_range(-spd,spd)			
}