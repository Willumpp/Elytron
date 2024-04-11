/// @description Shop purchase

if (ClickScript() and obj_Player.gold - 50 >= 0) { //If player has enough gold and clicked
	obj_Player.gold -= 50; //Take gold
	audio_play_sound(snd_ShopBuy,10,false);
	//Make purchase
	obj_Player.ammo += 128;
	image_index = 1; //Change sprite
}