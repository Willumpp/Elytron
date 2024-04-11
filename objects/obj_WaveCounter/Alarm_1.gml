/// @description BeetleT2 Spawner
if (beetleT2Number > 0 and beetleT2LoopNum > 0) { //Repet x times, if there are more than 0 beetles
	var locationX = -25;
	var locationY = random_range(56,622); //Random location
	instance_create_depth(locationX,locationY,20,obj_BeetleT2); //Spawn beetle
	beetleT2LoopNum -= 1; //Count down
	audio_play_sound(snd_BeetleAttack,0,false);
	alarm[1] = 60 * beetleT2SpawnCooldown; //Wait x seconds
}
