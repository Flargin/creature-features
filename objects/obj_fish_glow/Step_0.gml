if(irandom(100) == 0)
	animate = true;
	
if(animate) {
	image_speed = 1;
	if(image_index > image_number - 1) {
		image_speed = 0;
		image_index = 0;
		animate = false;
	}
}
