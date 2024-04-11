/// @description Play step
//When pressed

if (ClickScript()) {
	audio_play_sound(snd_ButtonPress,10,false);
	audio_stop_sound(snd_MenuMusic); //Stop menu music
	audio_play_sound(snd_GameMusic,40,true); //Play game music
	room_goto_next();
}