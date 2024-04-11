/// @description Music step
//Detect click
if (ClickScript()) {
	musicMute = !musicMute;
	if (musicMute == true) { 
		image_index = 1; //Change sprite
		audio_master_gain(0); //Mute
	}
	else{ 
		image_index = 0;
		audio_master_gain(1); //Un-Mute
	}
}