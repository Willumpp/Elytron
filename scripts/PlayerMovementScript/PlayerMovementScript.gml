// Horizontal Movement
if (KeyLeftScript()) { hspeed = -playerSpeed }
else if (KeyRightScript()) { hspeed = playerSpeed; }
else { hspeed = 0; }

//Vertial Movement
if (KeyDownScript()) { vspeed = playerSpeed; }
else if (KeyUpScript()) { vspeed = -playerSpeed; }
else { vspeed = 0; }