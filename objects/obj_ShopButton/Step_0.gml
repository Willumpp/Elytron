/// @description Shop button step

// When pressed open shop
if (ClickScript()) {
	ActivateShopScript(true);
	audio_play_sound(snd_ButtonPress,10,false);
}

if (obj_WaveCounter.wavePaused == true) {
	visible = true;
}
else {
	visible = false;
}