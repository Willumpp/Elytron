/// @description Bext Wave Object Step

// Detect click
if (ClickScript() == true and obj_WaveCounter.wavePaused == true) {
	WaveValueResetScript();
	obj_WaveCounter.wavePaused = false;
}

if (obj_WaveCounter.wavePaused == true) {
	visible = true;
}
else { visible = false; }