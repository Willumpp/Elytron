/// @description Wave Counter Start

//T1 Beetle
beetleT1Number = wave + 4;
beetleT1LoopNum = beetleT1Number;
alarm[0] = 1;

//T2 Beetle
beetleT2Number = 0;
beetleT2LoopNum = beetleT2Number;

//T3 Beetle
beetleT3Number = 0;
beetleT3LoopNum = beetleT3Number;

//Boss
beetleT4Number = 0;

if (global.hardMode == true) { //If game is set to hard
	beetleT1SpawnCooldown = 4;
	beetleT2SpawnCooldown = 5;
	beetleT3SpawnCooldown = 7;
}