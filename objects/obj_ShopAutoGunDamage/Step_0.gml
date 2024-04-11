/// @description Shop purchase

if (ClickScript() and obj_Player.gold - prices[timesPurchased] >= 0 and timesPurchased <= 4) { //If player has enough gold and clicked
	obj_Player.gold -= prices[timesPurchased]; //Take gold
	audio_play_sound(snd_ShopBuy,10,false);
	//Make purchase
	obj_Player.machineGunDamage += 1;
	image_index += 1; //Change sprite
	timesPurchased += 1; //Increased times purchased
}