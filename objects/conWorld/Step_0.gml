for(var i=0;i<array_length(global.shapes);i++){
	if(!global.shapeDiscovered[i]){
		with(global.shapes[i]){
			if(distance_to_object(oPlayer)<other.rng){
			oCamera.newShape(self);
			global.shapeDiscovered[i] =true;
			}
		}
	}
}