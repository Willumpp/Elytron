/// @description Continue Step
if (ClickScript()) { //When clicked
	obj_Player.playerWin = false;
	audio_play_sound(snd_ButtonPress,10,false);
	obj_WinText.visible = false; //Turn invisible
}
