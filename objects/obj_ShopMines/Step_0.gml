/// @description Shop purchase

if (ClickScript() and obj_Player.gold - 150 >= 0) { //If player has enough gold and clicked
	obj_Player.gold -= 150; //Take gold
	audio_play_sound(snd_ShopBuy,10,false);
	//Make purchase
	for (i = 0; i < 10; i++) {
		instance_create_depth(random_range(20,570),random_range(70,680),-11,obj_Mine);
	}
	image_index = 1; //Change sprite
}