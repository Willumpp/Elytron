/// @description Normal step
// Detect click
if (ClickScript()) {
	global.hardMode = false;
	audio_play_sound(snd_ButtonPress,10,false);
	obj_MainMenuArrow.x = x;
	obj_MainMenuArrow.y = y;
}
