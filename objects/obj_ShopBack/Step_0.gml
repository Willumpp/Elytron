/// @description Shop Back step
// Detect key press to go back

if (ClickScript() or keyboard_check_pressed(vk_escape)) {
	ActivateShopScript(false);
	audio_play_sound(snd_ButtonPress,10,false);
}
