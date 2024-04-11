/// @description Shop purchase

if (ClickScript() and obj_Player.gold - 100 >= 0 and timesPurchased < 1) { //If player has enough gold and clicked
	obj_Player.gold -= 100; //Take gold
	audio_play_sound(snd_ShopBuy,10,false);
	//Make purchase
	obj_Player.machineGunUnlock = true;
	if (obj_Player.weapon == 1) { obj_WeaponWheel.image_index = 2; }
	if (obj_Player.weapon == 2) { obj_WeaponWheel.image_index = 3; }
	image_index = 1; //Change sprite
	timesPurchased += 1; //Increased times purchased
}