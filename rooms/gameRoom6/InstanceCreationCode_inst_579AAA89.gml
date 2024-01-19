function activate(){
var w = instance_create_layer(8528,576,layer,oWall);
with w{
image_yscale = 3.5;
spr = get_wall_sprite(self,sWood,false);
}
var w = instance_create_layer(8595,725,"Instances_3",oWall);
var w = instance_create_layer(8528,671,"Instances_3",oWall);

oCamera.bossFight = true;
}