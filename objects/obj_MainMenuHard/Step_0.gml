/// @description Hard step
// Detect click
if (ClickScript()) {
	global.hardMode = true;
	audio_play_sound(snd_ButtonPress,10,false);
	obj_MainMenuArrow.x = x;
	obj_MainMenuArrow.y = y;
}
