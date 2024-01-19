global.levels = [[true,false,false],[false,false,false]]
global.shapeDiscovered = [false,false,false,false,false,false];
global.shapes = [oEnemy,oETriangle,oEHex,oERect,oBoss1,oBoss]
global.levelStars = [[[]]];
global.col = [[make_colour_rgb(102,0,250),make_colour_rgb(255,255,50),make_colour_rgb(255,50,255)],[c_green,c_orange,c_red],[make_color_rgb(100,255,100)]]
for(var i=0;i<3;i++){
	for(var j=0;j<2;j++){
		for(var k=0;k<3;k++){
			global.levelStars[i][j][k] =false;	
		}
	}
}
