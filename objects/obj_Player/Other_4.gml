/// @description Player Start
// Define variables

global.menuActive = false;
weapon = 1;
canShoot = true;
hspeed = 0;
vspeed = 0;
depth = -10000;
if (global.hardMode == true) { //If game is set to hard
	pistolDamage = 2;
	shotgunDamage = 2;
	machineGunDamage = 2;
	playerHealth = 100;
}