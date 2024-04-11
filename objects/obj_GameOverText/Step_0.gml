//Game over step
if (obj_Player.gameOver == true and playedSound == false) {
	audio_play_sound(snd_GameOver,30,false);
	playedSound = true;
}
	