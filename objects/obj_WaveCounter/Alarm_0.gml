/// @description BeetleT1 Spawner
if (beetleT1Number > 0 and beetleT1LoopNum > 0) { //Repet x times, if there are more than 0 beetles
	var locationX = -25;
	var locationY = random_range(56,622); //Random location
	instance_create_depth(locationX,locationY,20,obj_BeetleT1); //Spawn beetle
	beetleT1LoopNum -= 1; //Count down
	audio_play_sound(snd_BeetleAttack,0,false);
	alarm[0] = 60 * beetleT1SpawnCooldown; //Wait x seconds
}