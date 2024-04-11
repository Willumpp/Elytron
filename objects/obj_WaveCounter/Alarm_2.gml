/// @description BeetleT3 Spawner
if (beetleT3Number > 0 and beetleT3LoopNum > 0) { //Repet x times, if there are more than 0 beetles
	var locationX = -25;
	var locationY = random_range(56,622); //Random location
	instance_create_depth(locationX,locationY,20,obj_BeetleT3); //Spawn beetle
	beetleT3LoopNum -= 1; //Count down
	audio_play_sound(snd_BeetleAttack,0,false);
	alarm[2] = 60 * beetleT3SpawnCooldown; //Wait x seconds
}
