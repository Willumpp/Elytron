/// @description Wave Counter Step

//Change values when end of wave
if (beetleT1Number == 0 and wave < 5 and wavePaused == false and obj_Player.gameOver == false) {
	wavePaused = true;
}

//T2 Waves
if (beetleT1Number == 0 and beetleT2Number == 0 and wave >= 5 and wave < 10 and wavePaused == false and obj_Player.gameOver == false) {
	wavePaused = true;
}

//T3 Waves
if (beetleT1Number == 0 and beetleT2Number == 0 and beetleT3Number == 0 and wave >= 10 and wave < 15 and wavePaused == false and obj_Player.gameOver == false) {
	wavePaused = true;
}

//Boss Waves
if (beetleT1Number == 0 and beetleT2Number == 0 and beetleT3Number == 0 and wave >= 15 and beetleT4Number == 0 and wavePaused == false and obj_Player.gameOver == false) {
	wavePaused = true;
}

//Win
if (obj_Player.playerWin == true) { //Reset values
	beetleT1Number = 0; 
	beetleT2Number = 0;
	beetleT3Number = 0;
	obj_WinText.visible = true;
}