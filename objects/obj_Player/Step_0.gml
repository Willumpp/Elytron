/// @description Player Step

//Movement 
PlayerMovement();

//Collision
PlayerCollisionScript();

//Shooting
if (ShootingScript() == true and canShoot == true) {
	PlayerShootingScript(obj_PlayerSprite.image_angle - 90); //Spawn bullet objects
	canShoot = false
	alarm[0] = 60 * playerWeaponWait; //Set reload timer
}

//Change weapon
if (keyboard_check_pressed(ord("1"))) { //Pistol
	weapon = 1; //Set weapon
	playerWeaponWait = pistolCooldown; //Set cooldown
	obj_PlayerSprite.image_index = 0; //Set player sprite
	if (machineGunUnlock == false) { obj_WeaponWheel.image_index = 0; } //Change weapon wheel depening on unlocks
	else { obj_WeaponWheel.image_index = 2; }
}

else if (keyboard_check_pressed(ord("2"))) { //Shotgun
	weapon = 2;
	playerWeaponWait = shotgunCooldown;
	obj_PlayerSprite.image_index = 1;
	if (machineGunUnlock == false) { obj_WeaponWheel.image_index = 1; }
	else { obj_WeaponWheel.image_index = 3; }
}

else if (keyboard_check_pressed(ord("3")) and machineGunUnlock == true) { //Machine gun
	weapon = 3;
	playerWeaponWait = machineGunCooldown;
	obj_PlayerSprite.image_index = 2;
	obj_WeaponWheel.image_index = 4;
}
else if (keyboard_check_pressed(vk_f2)) {
	weapon = 4;
	playerWeaponWait = 0.1;
}

//Reset player pos
if (keyboard_check_pressed(ord("R"))) {
	x = 800;
	y = 352;
}

//Gold Cheat
if (keyboard_check_pressed(vk_f3)) { gold += 1000; }

//Health Cheat
if (keyboard_check_pressed(vk_f1)) { playerHealth += 1000; }
if (keyboard_check_pressed(vk_f4)) { playerHealth -= 1000; }

//Game Over
if (playerHealth <= 0 and playerWin == false) { //when health reaches 0
	gameOver = true;
	obj_GameOverText.visible = true; //Set "game over" to active
}
