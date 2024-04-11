obj_WaveCounter.wave += 1;

//T1 Beetle
obj_WaveCounter.beetleT1SpawnCooldown *= 0.95;
obj_WaveCounter.beetleT1Number = obj_WaveCounter.wave + 4;
obj_WaveCounter.beetleT1LoopNum = obj_WaveCounter.beetleT1Number;
obj_WaveCounter.alarm[0] = 1;

//T2 Beetle
if (obj_WaveCounter.wave >= 5) {
	obj_WaveCounter.beetleT2SpawnCooldown *= 0.95;
	obj_WaveCounter.beetleT2Number = obj_WaveCounter.wave + 4;
	obj_WaveCounter.beetleT2LoopNum = obj_WaveCounter.beetleT2Number;
	obj_WaveCounter.alarm[1] = 1;
}

//T3 Beetle
if (obj_WaveCounter.wave >= 10) {
	obj_WaveCounter.beetleT3SpawnCooldown *= 0.95;
	obj_WaveCounter.beetleT3Number = obj_WaveCounter.wave + 4;
	obj_WaveCounter.beetleT3LoopNum = obj_WaveCounter.beetleT3Number;
	obj_WaveCounter.alarm[2] = 1;
}

//Boss
if (obj_WaveCounter.wave % 15 == 0) {
	obj_WaveCounter.beetleT4Number = 1;
	//Spawn boss at middle
	instance_create_depth(0,384,20,obj_BeetleT4);
}

//Reset win
if (obj_Player.playerWin == true) {
	obj_Player.playerWin = false;
}