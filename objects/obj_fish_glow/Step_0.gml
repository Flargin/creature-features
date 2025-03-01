if(irandom(10000))
	animate = true;
	
if(animate) {
	image_speed = 1;
	if(image_index >= image_number - 1) {
		animate = false;
		image_speed = 0;
		image_index = 0;
	}
}
