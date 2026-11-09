if image_alpha < 0.01 && room != rm_titlescreen {
	instance_destroy()	
}
if room == rm_titlescreen {
	image_alpha += 0.01;
} else {
		image_alpha -= 0.01;
		}