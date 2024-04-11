var enemyTier = argument0;

if (x >= room_width) {
	//Decrease number depending on tier
	if (enemyTier == 1) { //tier 1
		obj_WaveCounter.beetleT1Number -= 1; 
		obj_Player.playerHealth -= 5;
	}
	if (enemyTier == 2) { //tier 2
		obj_WaveCounter.beetleT2Number -= 1;
		obj_Player.playerHealth -= 10;
	}
	if (enemyTier == 3) { //tier 3
		obj_WaveCounter.beetleT3Number -= 1;
		obj_Player.playerHealth -= 20;
	}
	if (enemyTier == 4) { //boss
		obj_WaveCounter.beetleT4Number -= 1;
		obj_Player.playerHealth -= 150;
	}
	instance_destroy(self); //Kill self, lol
}

//Set health to 0 if below 0
if (obj_Player.playerHealth < 0) {
	obj_Player.playerHealth = 0; 
}