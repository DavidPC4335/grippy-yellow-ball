

if(depth<=10){
draw_set_color(col)
for(var i=0;i<array_length(sy);i++){
var dx = x-(len/array_length(sy)*i)+sx[i]
draw_rectangle(dx,y+sy[i],dx+sz,y+sy[i]+sz,0)
}
}
//draw_rectangle(x,y,x-len,y+2,0)