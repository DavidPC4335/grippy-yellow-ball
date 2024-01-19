function activate(){
var cx = x+800,cy = -200;
instance_create_layer(cx,cy,layer,oETriangle);
instance_create_layer(cx,cy,layer,oEnemy);
instance_create_layer(cx,cy,layer,oERect);
instance_create_layer(cx,cy+600,layer,oEHex);

}