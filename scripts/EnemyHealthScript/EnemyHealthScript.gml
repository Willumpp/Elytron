var enemyTier = argument0;
var playerProjectile = instance_place(x,y,obj_PlayerBullet);

//Inflict player damage
if (place_meeting(x,y,obj_PlayerBullet) == true) {
	if (obj_Player.weapon == 1) { //Pistol
		enemyHealth -= obj_Player.pistolDamage;
		instance_destroy(playerProjectile);
		audio_play_sound(snd_BeetleAttack,0,false);
	}
	if (obj_Player.weapon == 2 or obj_Player.weapon == 4) { //Shotgun / admin
		enemyHealth -= obj_Player.shotgunDamage;
		instance_destroy(playerProjectile);
		audio_play_sound(snd_BeetleAttack,0,false);
	}
	if (obj_Player.weapon == 3) { //Machine gun
		enemyHealth -= obj_Player.machineGunDamage;
		instance_destroy(playerProjectile);
		audio_play_sound(snd_BeetleAttack,0,false);
	}
}

//Inflict turret damage
if (place_meeting(x,y,obj_GunTurretBullet) == true) { //Gun Turret
	var gunTurretProjectile = instance_place(x,y,obj_GunTurretBullet);
	enemyHealth -= obj_GunTurretHead.turretDamage;
	instance_destroy(gunTurretProjectile);
	audio_play_sound(snd_BeetleAttack,0,false);
}

if (place_meeting(x,y,obj_AssaultTurretBullet) == true) { //Assault Turret
	var assaultTurretProjectile = instance_place(x,y,obj_AssaultTurretBullet);
	enemyHealth -= obj_AssaultTurretHead.turretDamage;
	instance_destroy(assaultTurretProjectile);
	audio_play_sound(snd_BeetleAttack,0,false);
}

if (place_meeting(x,y,obj_LaserTurretBullet) == true) { //Laser Turret
	var laserTurretProjectile = instance_place(x,y,obj_LaserTurretBullet);
	enemyHealth -= obj_LaserTurretHead.turretDamage;
	instance_destroy(laserTurretProjectile);
	audio_play_sound(snd_BeetleAttack,0,false);
}

//Inflict mine damage
if (place_meeting(x,y,obj_Mine) == true) { 
	var mine = instance_place(x,y,obj_Mine);
	enemyHealth -= obj_Mine.mineDamage;
	instance_destroy(mine);
	audio_play_sound(snd_BeetleT4Attack,0,false);
}

//Change sprite depending on health
if (enemyHealth >= fullHealth * 0.9) {
	image_index = 0;
}
else if (enemyHealth < fullHealth * 0.9 and enemyHealth >= fullHealth * 0.8) {
	image_index = 1;
}
else if (enemyHealth < fullHealth * 0.8 and enemyHealth >= fullHealth * 0.7) {
	image_index = 2;
}
else if (enemyHealth < fullHealth * 0.7 and enemyHealth >= fullHealth * 0.6) {
	image_index = 3;
}
else if (enemyHealth < fullHealth * 0.6 and enemyHealth >= fullHealth * 0.5) {
	image_index = 4;
}
else if (enemyHealth < fullHealth * 0.5 and enemyHealth >= fullHealth * 0.4) {
	image_index = 5;
}
else if (enemyHealth < fullHealth * 0.4 and enemyHealth >= fullHealth * 0.3) {
	image_index = 6;
}
else if (enemyHealth < fullHealth * 0.3 and enemyHealth >= fullHealth * 0.2) {
	image_index = 7;
}
else if (enemyHealth < fullHealth * 0.2 and enemyHealth >= fullHealth * 0.1) {
	image_index = 8;
}
else if (enemyHealth < fullHealth * 0.1 and enemyHealth > 0) {
	image_index = 9;
}
else if (enemyHealth <= 0 or playerWin == true) {
	//Decrease number depending on tier
	if (enemyTier == 1) {  //tier 1
		obj_WaveCounter.beetleT1Number -= 1; 
		obj_Player.gold += 10;
		audio_play_sound(snd_BeetleT1Death,0,false);
	}
	if (enemyTier == 2) { //tier 2
		obj_WaveCounter.beetleT2Number -= 1;
		obj_Player.gold += 12;
		audio_play_sound(snd_BeetleT2Death,0,false);
	}
	if (enemyTier == 3) { //tier 3
		obj_WaveCounter.beetleT3Number -= 1;
		obj_Player.gold += 15;
		audio_play_sound(snd_BeetleT3Death,0,false);
	}
	if (enemyTier == 4 and obj_Player.gameOver == false) { //boss
		obj_WaveCounter.beetleT4Number -= 1;
		obj_Player.playerWin = true;
		obj_Player.gold += 1000;
		audio_play_sound(snd_BeetleT4Death,10,false);
	}
	instance_destroy(self); //Kill self
}